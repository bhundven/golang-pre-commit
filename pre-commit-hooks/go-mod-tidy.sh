#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

set -x

while IFS= read -r gomod
do
  pushd "$(dirname "${gomod}")" >/dev/null 2>&1
  if ! go mod tidy -v
  then
    exit 2
  fi
  popd >/dev/null 2>&1
done < <(find . -type f -name 'go.mod' -print)

if ! git diff --exit-code go.* &> /dev/null
then
  echo "go.mod or go.sum have changes. Please add the changes and commit again!"
  exit 3
fi
