# golang-pre-commit

This is a collection of golang [pre-commit](http://pre-commit.com/) hooks.
## Usage

```yaml
  - repo: https://github.com/bhundven/golang-pre-commit.git
    rev: v1.0.0
    hooks:
      - id: go-fmt
```

## Available Hooks

* `go-fmt` - Runs `gofmt`. Requires golang
* `go-imports` - Runs `goimports`. Requires golang and goimports
* `go-vet` - Runs `go vet`. Requires golang
* `go-lint` - Runs `golint`. Requires golang and golint
* `golangci-lint` - Runs `golangci-lint`. Requires golangci-lint
* `go-critic` - Runs `gocritic`. Requires gocritic
* `go-unit-tests` - Runs `go test`
* `go-build` - Runs `go build`
* `go-generate` - Runs `go generate`
* `go-mod-tidy` - Runs `go mod tidy -v`
* `go-mod-vendor` - Runs `go mod vendor`
