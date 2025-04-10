# golang-pre-commit

This is a collection of golang [pre-commit](http://pre-commit.com/) hooks
specifcally for build, generate, unit tests, and other build-time workflow
checks.

If you need a pre-commit for a linter or formatter, check out the official
[golangci-lint](https://golangci-lint.run/) pre-commit: https://github.com/golangci/golangci-lint/blob/main/.pre-commit-hooks.yaml
## Usage

```yaml
  - repo: https://github.com/bhundven/golang-pre-commit.git
    rev: v1
    hooks:
      - id: go-generate
```

## Available Hooks

* `go-unit-tests` - Runs `go test`. Requires golang: https://go.dev/doc/install
* `go-build` - Runs `go build`. Requires golang: https://go.dev/doc/install
* `go-generate` - Runs `go generate`. Requires golang: https://go.dev/doc/install
* `go-mod-tidy` - Runs `go mod tidy -v`. Requires golang: https://go.dev/doc/install
* `go-mod-vendor` - Runs `go mod vendor`. Requires golang: https://go.dev/doc/install
