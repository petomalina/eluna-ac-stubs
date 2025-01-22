package main

import (
	"fmt"
	"log/slog"
	"os"
	"sort"
	"strconv"
	"strings"

	"github.com/gocolly/colly/v2"
)

var alreadyFoundEnums = make(map[string]struct{})

// ClassPage represents a parsed Class page
type ClassPage struct {
	Title    string
	Content  string
	Methods  []Method
	Fields   []Field
	BaseType string
}

// Method represents a class method
type Method struct {
	Name        string
	ReturnType  string
	Parameters  []Parameter
	Description string
	Enums       []Enum
}

// Enum represents enum information
type Enum struct {
	Name    string
	Values  map[string]int
	Comment string
}

// Parameter represents a method parameter
type Parameter struct {
	Name         string
	Type         string
	DefaultValue string
}

// Field represents a class field
type Field struct {
	Name        string
	Type        string
	Description string
}

// Map of Lua keywords to their safe alternatives
var luaKeywordReplacements = map[string]string{
	"function": "func",
	"repeat":   "rep",
	"end":      "ending",
	"local":    "loc",
	"return":   "ret",
	"break":    "brk",
	"in":       "input",
}

// getSafeName returns a safe parameter name, replacing Lua keywords
func getSafeName(name string) string {
	if replacement, isKeyword := luaKeywordReplacements[name]; isKeyword {
		return replacement
	}
	return name
}

// correctParameterType corrects the parameter type to the correct Lua type
func correctParameterType(paramType string) string {
	if paramType == "bool" {
		return "boolean"
	}

	if paramType == "uint32" {
		return "number"
	}

	return paramType
}

func main() {
	baseURL := "https://www.azerothcore.org/eluna/"

	// Start with the main classes page to get all available classes
	classes, err := fetchWikiClasses(baseURL)
	if err != nil {
		slog.Error("failed to fetch wiki classes", "error", err)
		return
	}

	// Process each class
	for _, class := range classes {
		// debug
		// if class != "Achievement" {
		// 	continue
		// }

		page, err := parseClassPage(baseURL, class)
		if err != nil {
			slog.Error("failed to parse wiki page",
				"class", class,
				"error", err,
			)
			continue
		}

		// Generate Lua definitions for the class
		luaDefs := generateLuaDefs(page)

		// Save to file
		if err := saveLuaDefs(class, luaDefs); err != nil {
			slog.Error("failed to save lua definitions",
				"class", class,
				"error", err,
			)
		}
	}
}

func fetchWikiClasses(baseURL string) ([]string, error) {
	slog.Info("fetching classes from wiki", "url", baseURL)
	c := colly.NewCollector()
	var classes []string

	c.OnHTML(".sidebar .block .mod", func(e *colly.HTMLElement) {
		className := strings.TrimSpace(e.Text)
		if !contains(classes, className) {
			slog.Debug("found class", "name", className)
			classes = append(classes, className)
		}
	})

	err := c.Visit(baseURL)
	if err != nil {
		return nil, fmt.Errorf("failed to fetch wiki page: %w", err)
	}

	if len(classes) == 0 {
		return nil, fmt.Errorf("no classes found")
	}

	slog.Info("finished fetching classes", "count", len(classes))
	return classes, nil
}

// Helper function to check if a slice contains a string
func contains(slice []string, str string) bool {
	for _, s := range slice {
		if s == str {
			return true
		}
	}
	return false
}

func parseClassPage(baseURL, className string) (*ClassPage, error) {
	slog.Info("parsing class page", "class", className)
	c := colly.NewCollector()

	page := &ClassPage{
		Title: className,
	}

	// Parse inheritance info
	c.OnHTML("section#main > p", func(e *colly.HTMLElement) {
		text := e.Text
		if strings.Contains(text, "Inherits all methods from:") {
			slog.Info("found inheritance info", "class", className, "text", text)

			// Get all linked class names
			var bases []string
			e.ForEach("a.mod", func(_ int, link *colly.HTMLElement) {
				baseClass := strings.TrimSpace(link.Text)
				if baseClass != "" {
					bases = append(bases, baseClass)
				}
			})

			if len(bases) > 0 {
				page.BaseType = strings.Join(bases, ", ")
				slog.Info("found inheritance", "class", className, "inherits_from", page.BaseType)
			}
		}
	})

	// Parse method list
	methods := make(map[string]*Method)
	c.OnHTML("table tr", func(e *colly.HTMLElement) {
		methodName := e.ChildText("td > a.fn")
		if methodName == "" {
			return
		}

		description := strings.TrimSpace(e.ChildText("td.docblock"))

		method := &Method{
			Name:        methodName,
			Description: description,
		}
		methods[methodName] = method
	})

	// Visit class page
	url := fmt.Sprintf("%s%s/index.html", baseURL, className)
	slog.Info("visiting class page", "class", className, "url", url)
	if err := c.Visit(url); err != nil {
		return nil, fmt.Errorf("failed to fetch class page: %w", err)
	}

	slog.Info("found methods", "class", className, "count", len(methods))
	// Parse each method's details
	for methodName, method := range methods {
		methodPage, err := parseMethodPage(baseURL, className, methodName)
		if err != nil {
			slog.Error("failed to parse method page",
				"class", className,
				"method", methodName,
				"error", err,
			)
			continue
		}
		method.Parameters = methodPage.Parameters
		method.ReturnType = methodPage.ReturnType
		method.Enums = methodPage.Enums
	}

	// Convert methods map to sorted slice
	page.Methods = getSortedMethods(methods)

	slog.Info("finished parsing class",
		"class", className,
		"methods_count", len(page.Methods),
	)
	return page, nil
}

type MethodPage struct {
	Parameters []Parameter
	ReturnType string
	Enums      []Enum
}

func parseMethodPage(baseURL, className, methodName string) (*MethodPage, error) {
	c := colly.NewCollector()
	page := &MethodPage{}

	slog.Info("parsing method page", "class", className, "method", methodName)

	// Parse enum values
	c.OnHTML("section#main > div.docblock > pre", func(e *colly.HTMLElement) {
		text := e.Text

		// Look for enum definition
		if !strings.Contains(text, "enum") {
			return
		}

		// for enums that use auto incrementing values, we need to keep track of the last parsed value
		var lastParsedValue int = 0

		// Extract enum name and content
		lines := strings.Split(text, "\n")
		var enumName string
		values := make(map[string]int)

		for _, line := range lines {
			line = strings.TrimSpace(line)

			if strings.HasPrefix(strings.TrimSpace(line), "//") {
				continue
			}

			if strings.Contains(line, "{") || strings.Contains(line, "}") {
				continue
			}

			if strings.TrimSpace(line) == "" {
				continue
			}

			// Parse enum name
			if strings.HasPrefix(line, "enum") {
				parts := strings.Fields(line)
				if len(parts) >= 2 {
					enumName = parts[1]
					continue
				}
			}

			parts := strings.Split(line, "=")
			if len(parts) == 0 {
				continue
			}
			name := strings.TrimSpace(parts[0])

			// sometimes values might look like this, so we need to remove the comment and the comma
			// SELECT_TARGET_TOPAGGRO,    //Selects targets from top aggro to bottom
			// SELECT_TARGET_FARTHEST     //Selects targets from farthest to nearest
			commentIndex := strings.Index(name, "//")
			if commentIndex != -1 {
				name = name[:commentIndex]
			}
			name = strings.TrimRight(name, ", ")

			if len(parts) == 2 {
				// Extract value and comment
				valueParts := strings.Split(parts[1], "//")
				valueStr := strings.TrimSpace(valueParts[0])
				valueStr = strings.TrimRight(valueStr, ", ")

				value, err := strconv.ParseInt(valueStr, 0, 64)
				if err != nil {
					slog.Error("failed to parse enum value",
						"class", className,
						"method", methodName,
						"name", name,
						"value", valueStr,
						"error", err,
					)
					continue
				}

				lastParsedValue = int(value)
			} else {
				lastParsedValue++
			}

			values[name] = lastParsedValue
		}

		if enumName != "" && len(values) > 0 {
			slog.Info("found enum",
				"class", className,
				"method", methodName,
				"enum", enumName,
				"values_count", len(values),
			)

			if _, ok := alreadyFoundEnums[enumName]; !ok {
				// Add enum to page instead of method
				page.Enums = append(page.Enums, Enum{
					Name:   enumName,
					Values: values,
				})
				alreadyFoundEnums[enumName] = struct{}{}
			}
		}
	})

	// Parse return type from returns section
	c.OnHTML("#returns ~ dl dt code strong a", func(e *colly.HTMLElement) {
		// Get return type from the link or strong tag
		returnType := e.Text
		if returnType == "" {
			// If no link (for basic types like 'number'), get from parent strong tag
			returnType = e.DOM.Parent().Text()
		}

		if returnType != "" {
			page.ReturnType = returnType
			slog.Debug("found return type",
				"class", className,
				"method", methodName,
				"type", returnType,
			)
		}
	})

	// Parse parameters from arguments section
	c.OnHTML("#arguments ~ dl", func(e *colly.HTMLElement) {
		e.ForEach("dt", func(_ int, dt *colly.HTMLElement) {
			paramText := dt.Text
			parts := strings.Fields(paramText)
			if len(parts) >= 2 {
				var paramType string
				if link := dt.ChildAttr("a", "href"); link != "" {
					paramType = dt.ChildText("a")
				} else {
					paramType = dt.ChildText("strong")
				}

				if paramType == "" {
					paramType = strings.Trim(parts[0], "<>strong")
				}

				paramName := strings.Trim(parts[1], "()")
				defaultValue := ""
				if len(parts) > 2 {
					defaultValue = strings.Trim(parts[2], "()")
				}

				slog.Debug("found parameter",
					"class", className,
					"method", methodName,
					"name", paramName,
					"type", paramType,
					"default_value", defaultValue,
				)

				param := Parameter{
					Type:         paramType,
					Name:         paramName,
					DefaultValue: defaultValue,
				}
				page.Parameters = append(page.Parameters, param)
			}
		})
	})

	// Visit method page
	url := fmt.Sprintf("%s%s/%s.html", baseURL, className, methodName)
	slog.Debug("visiting method page", "class", className, "method", methodName, "url", url)
	if err := c.Visit(url); err != nil {
		return nil, fmt.Errorf("failed to fetch method page: %w", err)
	}

	// return types are doubling in the method.Parameters because of the html structure,
	// so we need to remove the last parameter if it has the same type as return type
	if page.ReturnType != "" {
		lastParam := page.Parameters[len(page.Parameters)-1]
		if lastParam.Type == page.ReturnType {
			page.Parameters = page.Parameters[:len(page.Parameters)-1]
		}
	}
	return page, nil
}

// getSortedMethods converts a map of methods to a sorted slice
func getSortedMethods(methods map[string]*Method) []Method {
	// Get all method names
	names := make([]string, 0, len(methods))
	for name := range methods {
		names = append(names, name)
	}

	// Sort method names
	sort.Strings(names)

	// Create sorted slice of methods
	sorted := make([]Method, len(names))
	for i, name := range names {
		sorted[i] = *methods[name]
	}

	return sorted
}

func generateLuaDefs(page *ClassPage) string {
	var sb strings.Builder

	sb.WriteString("---@meta\n\n")

	// Write class definition with inheritance
	if page.BaseType != "" {
		sb.WriteString(fmt.Sprintf("---@class %s : %s\n", page.Title, page.BaseType))
	} else {
		sb.WriteString(fmt.Sprintf("---@class %s\n", page.Title))
	}

	// Write fields
	for _, field := range page.Fields {
		if field.Description != "" {
			sb.WriteString(fmt.Sprintf("---@field public %s %s @ %s\n",
				field.Name, field.Type, field.Description))
		} else {
			sb.WriteString(fmt.Sprintf("---@field public %s %s\n",
				field.Name, field.Type))
		}
	}

	if page.Title != "Global" {
		sb.WriteString(fmt.Sprintf("%s = {}\n\n", page.Title))
	}

	// Write methods with consistent formatting
	for _, method := range page.Methods {
		for _, enum := range method.Enums {
			names := make([]string, 0, len(enum.Values))
			for name := range enum.Values {
				names = append(names, name)
			}

			// sort the names based on the mapped values
			sort.Slice(names, func(i, j int) bool {
				return enum.Values[names[i]] < enum.Values[names[j]]
			})

			// also create EmmyLua alias
			/*
				---@alias LocaleConstant
				---| 0 # enUS
				---| 1 # koKR
				---| 2 # frFR
			*/
			sb.WriteString(fmt.Sprintf("---@alias %s\n", enum.Name))

			for _, value := range names {
				sb.WriteString(fmt.Sprintf("---| %d # %s\n", enum.Values[value], value))
			}

			// Add comment describing the enum
			sb.WriteString(fmt.Sprintf("\n-- %s\n", enum.Name))

			// Write each enum value as a global constant
			for _, name := range names {
				sb.WriteString(fmt.Sprintf("%s = %d\n", name, enum.Values[name]))
			}
			sb.WriteString("\n")
		}

		if method.Description != "" {
			// Format description as a single line
			desc := strings.ReplaceAll(method.Description, "\n", " ")
			sb.WriteString(fmt.Sprintf("---%s\n", desc))
		}

		// Parameters with keyword handling
		for _, param := range method.Parameters {
			paramName := getSafeName(param.Name)
			if param.DefaultValue != "" {
				paramName += "?"
			}
			sb.WriteString(fmt.Sprintf("---@param %s %s\n", paramName, correctParameterType(param.Type)))
		}

		// Return type
		if method.ReturnType != "" {
			sb.WriteString(fmt.Sprintf("---@return %s\n", correctParameterType(method.ReturnType)))
		}

		// Method signature with renamed parameters
		if page.Title != "Global" {
			sb.WriteString(fmt.Sprintf("function %s:%s(", page.Title, method.Name))
		} else {
			sb.WriteString(fmt.Sprintf("function %s(", method.Name))
		}
		params := make([]string, len(method.Parameters))
		for i, param := range method.Parameters {
			params[i] = getSafeName(param.Name)
		}
		sb.WriteString(strings.Join(params, ", "))
		sb.WriteString(") end\n\n")
	}

	return sb.String()
}

func saveLuaDefs(className, content string) error {
	if err := os.MkdirAll("stubs", 0755); err != nil {
		return fmt.Errorf("failed to create stubs directory: %w", err)
	}

	filename := fmt.Sprintf("stubs/%s.lua", className)
	return os.WriteFile(filename, []byte(content), 0644)
}
