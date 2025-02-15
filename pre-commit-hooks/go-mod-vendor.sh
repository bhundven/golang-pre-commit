#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

go mod vendor

git diff --exit-code vendor &> /dev/null
if [ $? -eq 1 ]
then
  echo "vendor has changes. Please add the changes and commit again!"
  exit 1
fi
