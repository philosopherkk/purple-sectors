#!/bin/sh
# Fail when the satellite GitHub Pages workflow is present.
# This repo does not publish the board. The live copy is the github.io mirror.
set -eu

root="${1:-.}"
target="$root/.github/workflows/pages.yml"

if [ -e "$target" ] || [ -L "$target" ]; then
  printf 'fail: %s exists\n' "$target" >&2
  exit 1
fi

printf 'ok: %s is absent\n' "$target"
exit 0
