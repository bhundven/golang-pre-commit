# golang-pre-commit

This is a collection of golang [pre-commit](http://pre-commit.com/) hooks.
## Usage

```yaml
  - repo: https://github.com/bhundven/golang-pre-commit.git
    rev: v1.0.1
    hooks:
      - id: go-fmt
```

## Available Hooks

* `go-fmt` - Runs `gofmt`. Requires golang: https://go.dev/doc/install
* `go-imports` - Runs `goimports`. Requires goimports: https://pkg.go.dev/golang.org/x/tools/cmd/goimports
* `go-vet` - Runs `go vet`. Requires golang: https://go.dev/doc/install
* `go-lint` - [DEPRECATED] Runs `golint`. Requires golint: https://github.com/golang/lint
* `golangci-lint` - Runs `golangci-lint`. Requires golangci-lint: https://github.com/golangci/golangci-lint
* `go-critic` - Runs `gocritic`. Requires gocritic: https://github.com/go-critic/go-critic
* `go-unit-tests` - Runs `go test`. Requires golang: https://go.dev/doc/install
* `go-build` - Runs `go build`. Requires golang: https://go.dev/doc/install
* `go-generate` - Runs `go generate`. Requires golang: https://go.dev/doc/install
* `go-mod-tidy` - Runs `go mod tidy -v`. Requires golang: https://go.dev/doc/install
* `go-mod-vendor` - Runs `go mod vendor`. Requires golang: https://go.dev/doc/install
