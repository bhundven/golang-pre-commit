#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v gocritic &> /dev/null
then
  echo "gocritic is not installed or is not in the current PATH" >&2
  echo "Find out more at: https://github.com/go-critic/go-critic" >&2
  exit 1
fi

for file in "$@"
do
  if ! gocritic check "${file}" 2>&1
  then
    exit 1
  fi
done
