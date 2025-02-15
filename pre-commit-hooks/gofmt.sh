#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v gofmt &> /dev/null
then
  echo "gofmt is not installed or is not in the current PATH" >&2
  exit 1
fi

output="$(gofmt -l -w "$@")"
echo "${output}"
[[ -z "${output}" ]]
