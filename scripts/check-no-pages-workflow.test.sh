#!/bin/sh
# HEAD must pass. A fixture that restores .github/workflows/pages.yml must fail.
# The fixture is a temp directory. This script does not write the workflow back
# into the repository.
set -eu

root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
check="$root/scripts/check-no-pages-workflow.sh"
deleted_at="b0a650c9e78fbb9e2b2c35da9b63b972ac367f57^:.github/workflows/pages.yml"

printf 'HEAD check:\n'
set +e
sh "$check" "$root"
head_status=$?
set -e
printf 'HEAD exit: %s\n' "$head_status"
if [ "$head_status" -ne 0 ]; then
  exit "$head_status"
fi

fixture=$(mktemp -d)
trap 'rm -rf "$fixture"' EXIT
mkdir -p "$fixture/.github/workflows"
restored="$fixture/.github/workflows/pages.yml"

if git -C "$root" cat-file -e "$deleted_at" 2>/dev/null; then
  git -C "$root" show "$deleted_at" > "$restored"
  printf 'fixture source: restored %s\n' "$deleted_at"
else
  printf 'name: pages\n' > "$restored"
  printf 'fixture source: stub (deleted workflow blob not in this clone)\n'
fi

printf 'fixture check:\n'
set +e
sh "$check" "$fixture"
fixture_status=$?
set -e
printf 'fixture exit: %s\n' "$fixture_status"
if [ "$fixture_status" -eq 0 ]; then
  printf 'fixture: check exited 0; expected non-zero\n' >&2
  exit 1
fi

exit 0
