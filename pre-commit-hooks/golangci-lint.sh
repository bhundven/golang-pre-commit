#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v golangci-lint &> /dev/null
then
  echo "golangci-lint is not installed or is not in the current PATH" >&2
  echo "Find out more at: https://github.com/golangci/golangci-lint" >&2
  exit 1
fi

exec golangci-lint run "$@"
