#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

pkg="$(go list)"
for dir in $(echo "$@" | xargs -n1 dirname | sort -u)
do
  go vet "${pkg}/${dir}"
done
