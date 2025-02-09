#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v mockery &> /dev/null
then
  echo "mockery is not installed or is not in the current PATH" >&2
  echo "Find out more at: https://github.com/vektra/mockery" >&2
  exit 2
fi

if ! git diff --exit-code mocks &> /dev/null
then
  echo "mocks has changes. Please add the changes and commit again!"
  exit 3
fi
