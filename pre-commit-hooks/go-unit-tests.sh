#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

declare FILES

fail() {
  echo "$1"
  exit 1
}

FILES=$(go list ./... | grep -v /vendor/) || fail "Getting file list failed"
go test -tags=unit -timeout 30s -short -v "${FILES}" || fail "Unit tests failed"
