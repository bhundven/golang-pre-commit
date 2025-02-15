#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

declare FILES
FILES=$(go list ./... | grep -v /vendor/)
exec go build "${FILES}"
