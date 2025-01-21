# Eluna AzerothCore Stubs

This repository contains the Eluna AzerothCore Stubs with the parser that is used to generate the stubs.

## Usage

All stubs are generated in the `stubs/` directory. To use the stubs, clone the repository and add the `stubs/` directory to your project.

```sh
git clone https://github.com/petomalina/eluna-ac-stubs.git
```

Add the following to your `settings.json` file, replacing the path to the `eluna-ac-stubs/stubs` directory with the actual path:
```json
"Lua.workspace.library": [
    "${workspaceFolder}",
    "${workspaceFolder}/eluna-ac-stubs/stubs"
],
```

## Parsing

The parser uses the [Eluna AC Wiki](https://www.azerothcore.org/eluna/) as a source of information. It parses
all classes provided by the wiki pages and creates stubs for them.

## Running the parser

```sh
go run parser/main.go
```
