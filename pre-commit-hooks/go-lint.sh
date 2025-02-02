#!/usr/bin/env bash
# vi: ts=2:sw=2:et
# vim: ft=bash

set -euo pipefail

if ! command -v golint &> /dev/null
then
  echo "golint is not installed or is not in the current PATH" >&2
  echo "Find out more at: https://github.com/golang/lint" >&2
  exit 1
fi

for file in "$@"
do
  if ! golint -set_exit_status "${file}" 2>&1
  then
    exit 1
  fi
done
