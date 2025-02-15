#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

echo "$@" | xargs -n1 go generate
