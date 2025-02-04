package parser

import (
	"errors"
	"io"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_cpp "github.com/tree-sitter/tree-sitter-cpp/bindings/go"
)

type parser struct {
	ts   *tree_sitter.Parser
	lang *tree_sitter.Language

	tree *tree_sitter.Tree
}

func NewCppParser(reader io.Reader) (*parser, error) {
	ts := tree_sitter.NewParser()
	lang := tree_sitter.NewLanguage(tree_sitter_cpp.Language())
	ts.SetLanguage(lang)

	p := &parser{
		ts:   ts,
		lang: lang,
	}

	err := p.parse(reader)
	if err != nil {
		return nil, err
	}

	return p, nil
}

// Parse parses a C++ file and returns the tree.
func (p *parser) parse(reader io.Reader) error {
	bb, err := io.ReadAll(reader)
	if err != nil {
		return err
	}

	p.tree = p.ts.Parse(bb, nil)

	return nil
}

func (p *parser) Tree() *tree_sitter.Tree {
	return p.tree
}

func (p *parser) Captures(query string) (tree_sitter.QueryCaptures, error) {
	if p.tree == nil {
		return tree_sitter.QueryCaptures{}, errors.New("tree not parsed")
	}

	q, err := tree_sitter.NewQuery(p.lang, query)
	if err != nil {
		return tree_sitter.QueryCaptures{}, err
	}

	captures := tree_sitter.NewQueryCursor().Captures(q, p.tree.RootNode(), nil)

	return captures, nil
}

func (p *parser) Matches(query string) (tree_sitter.QueryMatches, error) {
	if p.tree == nil {
		return tree_sitter.QueryMatches{}, errors.New("tree not parsed")
	}

	q, err := tree_sitter.NewQuery(p.lang, query)
	if err != nil {
		return tree_sitter.QueryMatches{}, err
	}

	return tree_sitter.NewQueryCursor().Matches(q, p.tree.RootNode(), nil), nil
}
