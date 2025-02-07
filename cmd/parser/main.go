package main

import (
	"encoding/json"
	"fmt"
	"io"
	"log/slog"
	"os"
	"sort"
	"strconv"
	"strings"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_cpp "github.com/tree-sitter/tree-sitter-cpp/bindings/go"
)

// ClassPage represents a parsed Class page
type ClassPage struct {
	Title    string
	Content  string
	Methods  []Method
	BaseType string
}

// Method represents a class method
type Method struct {
	Name        string
	ReturnType  string
	Parameters  []Parameter
	Description string
	Enums       map[string]Enum
}

// Enum represents enum information
type Enum struct {
	Name   string
	Values map[string]int
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

// Add new type to track all enums globally
type GlobalEnums map[string]Enum

var globalEnums = GlobalEnums{}

// Add function to save constants file
func saveConstants() error {
	var sb strings.Builder
	sb.WriteString("---@meta\n\n")

	// Sort enum names for consistent output
	names := getSortedKeys(globalEnums)
	// Write each enum
	for _, enumName := range names {
		enum := globalEnums[enumName]

		// Create EmmyLua alias
		sb.WriteString(fmt.Sprintf("---@alias %s\n", enumName))

		// Sort values by their numeric value
		values := make([]string, 0, len(enum.Values))
		for name := range enum.Values {
			values = append(values, name)
		}
		sort.Slice(values, func(i, j int) bool {
			if enum.Values[values[i]] != enum.Values[values[j]] {
				return enum.Values[values[i]] < enum.Values[values[j]]
			}
			return values[i] < values[j]
		})

		// Write enum values as alias options
		for _, value := range values {
			sb.WriteString(fmt.Sprintf("---| %d # %s\n", enum.Values[value], value))
		}

		// Write enum values as globals
		sb.WriteString(fmt.Sprintf("\n-- %s\n", enumName))
		for _, value := range values {
			sb.WriteString(fmt.Sprintf("%s = %d\n", value, enum.Values[value]))
		}
		sb.WriteString("\n")
	}

	return os.WriteFile("stubs/Constants.lua", []byte(sb.String()), 0644)
}

const (
	NamespaceNameQuery = "(namespace_definition name: (namespace_identifier) @namespace_name)"
	FuncionQuery       = `
		(declaration_list
			(comment)? @funcdoc
			.
			(function_definition
				declarator: (function_declarator
					declarator: (identifier) @funcname )))`
	EnumQuery = `
  (enum_specifier
    name: (type_identifier) @enumName
      body: (enumerator_list
        (enumerator
          name: (identifier)
          value: (number_literal)?
        ) @enumField
      )
  )`
)

var lang = tree_sitter.NewLanguage(tree_sitter_cpp.Language())

// parseEnumsFromComment parses enums from a comment string
// commentString can have one or more enums that start with "enum" and end with "};"
func parseEnumsFromComment(commentString string) string {
	lines := strings.Split(commentString, "\n")
	var sb strings.Builder
	inEnum := false

	for _, line := range lines {
		// Clean up the line by removing comment markers and whitespace
		line = strings.TrimPrefix(strings.TrimPrefix(strings.TrimSpace(line), "//"), "*")
		line = strings.TrimSpace(line)

		if line == "" {
			continue
		}

		// Start collecting when we see enum
		if strings.HasPrefix(line, "enum") {
			inEnum = true
		}

		if inEnum {
			sb.WriteString(line)
			sb.WriteString("\n")
		}

		// Stop when we hit the end of enum
		if strings.Contains(line, "};") {
			inEnum = false
		}
	}

	return sb.String()
}

func queryNamespaceName(bb []byte, tree *tree_sitter.Tree) (string, error) {
	q, qerr := tree_sitter.NewQuery(lang, NamespaceNameQuery)
	if qerr != nil {
		return "", fmt.Errorf("failed to create query: %w", qerr)
	}

	matches := tree_sitter.NewQueryCursor().Matches(q, tree.RootNode(), nil)
	for match := matches.Next(); match != nil; match = matches.Next() {
		for _, c := range match.Captures {
			captureName := q.CaptureNames()[c.Index]

			switch captureName {
			case "namespace_name":
				return c.Node.Utf8Text(bb), nil
			}
		}
	}

	return "", fmt.Errorf("no namespace name found")
}

func queryMethods(bb []byte, tree *tree_sitter.Tree) ([]Method, error) {
	L := slog.With(slog.String("method", "queryMethods"))

	q, qerr := tree_sitter.NewQuery(lang, FuncionQuery)
	if qerr != nil {
		return nil, fmt.Errorf("failed to create query: %w", qerr)
	}

	var methods []Method
	matches := tree_sitter.NewQueryCursor().Matches(q, tree.RootNode(), nil)
	for match := matches.Next(); match != nil; match = matches.Next() {
		L.Debug("new match", "id", match.Id())

		// each match is a new method
		methods = append(methods, Method{})

		for _, c := range match.Captures {
			captureName := q.CaptureNames()[c.Index]
			L.Debug("new capture", "index", c.Index, "captureName", captureName)

			switch captureName {
			case "funcname":
				methods[len(methods)-1].Name = c.Node.Utf8Text(bb)
			case "funcdoc":
				enumComment := parseEnumsFromComment(c.Node.Utf8Text(bb))
				enums, err := parseAndQueryEnums([]byte(enumComment))
				if err != nil {
					return nil, fmt.Errorf("failed to parse enums: %w", err)
				}
				methods[len(methods)-1].Enums = enums
				methods[len(methods)-1].Description = c.Node.Utf8Text(bb)
			}
		}
	}

	return methods, nil
}

func parseAndQueryEnums(bb []byte) (map[string]Enum, error) {
	parser := tree_sitter.NewParser()
	parser.SetLanguage(lang)

	tree := parser.Parse(bb, nil)
	defer tree.Close()

	q, qerr := tree_sitter.NewQuery(lang, EnumQuery)
	if qerr != nil {
		return nil, fmt.Errorf("failed to create query: %w", qerr)
	}

	var err error
	enums := make(map[string]Enum)

	// capture of the currently matched enum name
	enumName := ""
	lastKnownValue := 0

	matches := tree_sitter.NewQueryCursor().Matches(q, tree.RootNode(), nil)
	for match := matches.Next(); match != nil; match = matches.Next() {
		slog.Debug("new match", "id", match.Id())

		for _, c := range match.Captures {
			captureName := q.CaptureNames()[c.Index]

			switch captureName {
			case "enumName":
				enumName = c.Node.Utf8Text(bb)
				slog.Debug("capture", slog.String("name", captureName), "value", enumName)

				if _, ok := enums[enumName]; !ok {
					enums[enumName] = Enum{
						Name:   enumName,
						Values: make(map[string]int),
					}
				}
			case "enumField":
				slog.Debug("capture", slog.String("name", captureName), slog.String("value", c.Node.Utf8Text(bb)))

				fieldName := c.Node.NamedChild(0).Utf8Text(bb)
				fieldValue := -1

				fieldValueNode := c.Node.NamedChild(1)
				if fieldValueNode != nil {
					fieldValue, err = strconv.Atoi(fieldValueNode.Utf8Text(bb))
					if err != nil {
						return nil, fmt.Errorf("failed to parse enum field value: %w", err)
					}
					lastKnownValue = fieldValue
				} else {
					fieldValue = lastKnownValue + 1
					lastKnownValue = fieldValue
				}

				enums[enumName].Values[fieldName] = fieldValue

			default:
				slog.Warn("unknown capture", "captureName", captureName)
			}
		}
	}

	return enums, nil
}

func parseFile(path string) (ClassPage, error) {
	f, err := os.Open(path)
	if err != nil {
		return ClassPage{}, fmt.Errorf("failed to open file: %w", err)
	}
	defer f.Close()

	parser := tree_sitter.NewParser()
	parser.SetLanguage(lang)

	bb, err := io.ReadAll(f)
	if err != nil {
		return ClassPage{}, fmt.Errorf("failed to read file: %w", err)
	}

	tree := parser.Parse(bb, nil)
	defer tree.Close()

	namespaceName, err := queryNamespaceName(bb, tree)
	if err != nil {
		return ClassPage{}, fmt.Errorf("failed to query namespace name: %w", err)
	}

	methods, err := queryMethods(bb, tree)
	if err != nil {
		return ClassPage{}, fmt.Errorf("failed to query methods: %w", err)
	}

	return ClassPage{
		Title:    strings.TrimPrefix(namespaceName, "Lua"),
		Methods:  methods,
		BaseType: "",
	}, nil
}

func main() {
	cls, err := parseFile("mod-eluna/src/LuaEngine/methods/AchievementMethods.h")
	if err != nil {
		slog.Error("failed to parse file", "error", err)
		return
	}

	json, err := json.MarshalIndent(cls, "", "  ")
	if err != nil {
		slog.Error("failed to marshal class", "error", err)
		return
	}

	os.WriteFile("test.json", json, 0644)
}

func getSortedKeys[T any](m map[string]T) []string {
	keys := make([]string, 0, len(m))
	for key := range m {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	return keys
}

func generateLuaDefs(page *ClassPage) string {
	var sb strings.Builder

	sb.WriteString("---@meta\n\n")

	// Write class definition with inheritance
	if page.BaseType != "" {
		sb.WriteString(fmt.Sprintf("---@class %s : %s\n", page.Title, page.BaseType))
	} else if page.Title != "Global" {
		sb.WriteString(fmt.Sprintf("---@class %s\n", page.Title))
	}

	if page.Title != "Global" {
		sb.WriteString(fmt.Sprintf("%s = {}\n\n", page.Title))
	}

	// Write methods with consistent formatting
	for _, method := range page.Methods {
		if method.Description != "" {
			// Format description as a single line
			desc := strings.ReplaceAll(method.Description, "\n", " ")
			sb.WriteString(fmt.Sprintf("---%s\n", desc))
		}

		// Parameters with enum type handling
		for _, param := range method.Parameters {
			paramName := getSafeName(param.Name)
			paramType := param.Type

			// Use enum type for event parameters
			// if strings.HasPrefix(method.Name, "Register") && paramName == "event" {
			// 	if len(method.EnumNames) > 0 {
			// 		paramType = method.EnumNames[0]
			// 	}
			// }

			if param.DefaultValue != "" {
				paramName += "?"
			}
			sb.WriteString(fmt.Sprintf("---@param %s %s\n", paramName, correctParameterType(paramType)))
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
