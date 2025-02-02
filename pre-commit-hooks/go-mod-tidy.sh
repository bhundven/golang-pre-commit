#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! go mod tidy -v "$@"
then
  exit 2
fi

if ! git diff --exit-code go.* &> /dev/null
then
  echo "go.mod or go.sum have changes. Please add the changes and commit again!"
  exit 3
fi
