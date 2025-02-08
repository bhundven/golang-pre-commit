#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v gofumpt &> /dev/null
then
  echo "gofumpt is not installed or is not in the current PATH" >&2
  echo "Find out more at: https://github.com/mvdan/gofumpt" >&2
  exit 1
fi

output="$(gofumpt -l -w "$@")"
echo "${output}"
[[ -z "${output}" ]]
