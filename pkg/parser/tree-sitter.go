package parser

import (
	"io"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_cpp "github.com/tree-sitter/tree-sitter-cpp/bindings/go"
)

// ParseCpp parses a C++ file and returns the tree.
func ParseCpp(reader io.Reader) (*tree_sitter.Tree, error) {
	parser := tree_sitter.NewParser()
	defer parser.Close()

	parser.SetLanguage(tree_sitter.NewLanguage(tree_sitter_cpp.Language()))

	bb, err := io.ReadAll(reader)
	if err != nil {
		return nil, err
	}

	tree := parser.Parse(bb, nil)
	return tree, nil
}
