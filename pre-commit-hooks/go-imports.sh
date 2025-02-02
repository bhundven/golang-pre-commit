#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v goimports &> /dev/null
then
  echo "goimports is not installed or is not in the current PATH" >&2
  echo "Find out more at: https://pkg.go.dev/golang.org/x/tools/cmd/goimports" >&2
  exit 1
fi

output="$(goimports -l -w "$@")"
echo "${output}"
[[ -z "${output}" ]]
