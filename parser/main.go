package main

import (
	"fmt"
	"log/slog"
	"os"
	"sort"
	"strings"

	"github.com/gocolly/colly/v2"
)

// WikiPage represents a parsed wiki page
type WikiPage struct {
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
}

// Parameter represents a method parameter
type Parameter struct {
	Name string
	Type string
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
		// if class != "Vehicle" {
		// 	continue
		// }

		page, err := parseWikiPage(baseURL, class)
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

func parseWikiPage(baseURL, className string) (*WikiPage, error) {
	slog.Info("parsing class page", "class", className)
	c := colly.NewCollector(
		colly.AllowURLRevisit(),
	)

	page := &WikiPage{
		Title: className,
	}

	methods := make(map[string]*Method)

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

	c.OnHTML("table tr", func(e *colly.HTMLElement) {
		methodName := e.ChildText("td > a.fn")
		if methodName == "" {
			return
		}

		slog.Info("found method", "class", className, "method", methodName)
		description := strings.TrimSpace(e.ChildText("td.docblock"))

		method := &Method{
			Name:        methodName,
			Description: description,
		}
		methods[methodName] = method

		methodURL := fmt.Sprintf("%s%s/%s.html", baseURL, className, methodName)
		slog.Debug("visiting method page", "class", className, "method", methodName, "url", methodURL)
		err := c.Visit(methodURL)
		if err != nil {
			slog.Error("failed to visit method page",
				"class", className,
				"method", methodName,
				"url", methodURL,
				"error", err,
			)
		}
	})

	// Parse return type from returns section
	c.OnHTML("#returns ~ dl dt code strong a", func(e *colly.HTMLElement) {
		urlParts := strings.Split(e.Request.URL.Path, "/")
		if len(urlParts) < 2 {
			return
		}
		methodName := strings.TrimSuffix(urlParts[len(urlParts)-1], ".html")

		method, exists := methods[methodName]
		if !exists {
			return
		}

		// Get return type from the link or strong tag
		returnType := e.Text
		if returnType == "" {
			// If no link (for basic types like 'number'), get from parent strong tag
			returnType = e.DOM.Parent().Text()
		}

		if returnType != "" {
			method.ReturnType = returnType
			slog.Debug("found return type",
				"class", className,
				"method", methodName,
				"type", returnType,
			)
		}
	})

	// Parse parameters from arguments section
	c.OnHTML("#arguments ~ dl", func(e *colly.HTMLElement) {
		urlParts := strings.Split(e.Request.URL.Path, "/")
		if len(urlParts) < 2 {
			return
		}
		methodName := strings.TrimSuffix(urlParts[len(urlParts)-1], ".html")
		slog.Debug("parsing method parameters", "class", className, "method", methodName)

		method, exists := methods[methodName]
		if !exists {
			return
		}

		e.ForEach("dt", func(_ int, dt *colly.HTMLElement) {
			paramText := dt.Text
			// Example: Unit passenger or number seat
			parts := strings.Fields(paramText)
			if len(parts) >= 2 {
				var paramType string
				// Check if type is a link to another class
				if link := dt.ChildAttr("a", "href"); link != "" {
					paramType = dt.ChildText("a")
				} else {
					// Get the type from the strong tag
					paramType = dt.ChildText("strong")
				}

				// If we couldn't get the type from HTML elements, use the text
				if paramType == "" {
					paramType = strings.Trim(parts[0], "<>strong")
				}

				paramName := strings.Trim(parts[1], "()")

				slog.Debug("found parameter",
					"class", className,
					"method", methodName,
					"name", paramName,
					"type", paramType,
				)
				param := Parameter{
					Type: paramType,
					Name: paramName,
				}
				method.Parameters = append(method.Parameters, param)
			}
		})
	})

	url := fmt.Sprintf("%s%s/index.html", baseURL, className)
	slog.Info("visiting class page", "class", className, "url", url)
	err := c.Visit(url)
	if err != nil {
		return nil, fmt.Errorf("failed to fetch class page: %w", err)
	}

	// Convert methods map to sorted slice
	page.Methods = getSortedMethods(methods)

	slog.Info("finished parsing class",
		"class", className,
		"methods_count", len(page.Methods),
	)
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

func generateLuaDefs(page *WikiPage) string {
	var sb strings.Builder

	sb.WriteString("---@meta\n\n")

	if page.Title == "Global" {
		for _, method := range page.Methods {
			if method.Description != "" {
				desc := strings.ReplaceAll(method.Description, "\n", " ")
				sb.WriteString(fmt.Sprintf("---%s\n", desc))
			}

			// Write parameters with keyword handling
			for _, param := range method.Parameters {
				paramName := getSafeName(param.Name)
				sb.WriteString(fmt.Sprintf("---@param %s %s\n", paramName, param.Type))
			}

			if method.ReturnType != "" {
				sb.WriteString(fmt.Sprintf("---@return %s\n", method.ReturnType))
			}

			// Write function signature with renamed parameters
			sb.WriteString(fmt.Sprintf("function %s(", method.Name))
			params := make([]string, len(method.Parameters))
			for i, param := range method.Parameters {
				params[i] = getSafeName(param.Name)
			}
			sb.WriteString(strings.Join(params, ", "))
			sb.WriteString(") end\n\n")
		}
	} else {
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

		sb.WriteString(fmt.Sprintf("%s = {}\n\n", page.Title))

		// Write methods with consistent formatting
		for _, method := range page.Methods {
			if method.Description != "" {
				// Format description as a single line
				desc := strings.ReplaceAll(method.Description, "\n", " ")
				sb.WriteString(fmt.Sprintf("---%s\n", desc))
			}

			// return types are doubling in the method.Parameters because of the html structure,
			// so we need to remove the last parameter if it has the same type as return type
			if method.ReturnType != "" {
				lastParam := method.Parameters[len(method.Parameters)-1]
				if lastParam.Type == method.ReturnType {
					method.Parameters = method.Parameters[:len(method.Parameters)-1]
				}
			}

			// Parameters with keyword handling
			for _, param := range method.Parameters {
				paramName := getSafeName(param.Name)
				sb.WriteString(fmt.Sprintf("---@param %s %s\n", paramName, param.Type))
			}

			// Return type
			if method.ReturnType != "" {
				sb.WriteString(fmt.Sprintf("---@return %s\n", method.ReturnType))
			}

			// Method signature with renamed parameters
			sb.WriteString(fmt.Sprintf("function %s:%s(", page.Title, method.Name))
			params := make([]string, len(method.Parameters))
			for i, param := range method.Parameters {
				params[i] = getSafeName(param.Name)
			}
			sb.WriteString(strings.Join(params, ", "))
			sb.WriteString(") end\n\n")
		}
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
