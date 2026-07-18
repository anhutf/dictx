#!/bin/sh

set -eu

cd "$(dirname "$0")/.."

assert_contains() {
  file="$1"
  pattern="$2"

  if ! rg -q --fixed-strings -- "$pattern" "$file"; then
    echo "Expected $file to contain: $pattern" >&2
    exit 1
  fi
}

assert_not_contains() {
  path="$1"
  pattern="$2"

  if rg -q --fixed-strings -- "$pattern" "$path"; then
    echo "Did not expect $path to contain: $pattern" >&2
    exit 1
  fi
}

assert_contains "css/general.css" "--color-brand-primary: #0ca678;"
assert_contains "css/general.css" "--color-brand-primary-strong: #099268;"
assert_contains "css/general.css" "--color-brand-accent: #38d9a9;"
assert_contains "css/general.css" "--color-brand-tint-1: #e6fcf5;"
assert_contains "css/general.css" "--color-brand-tint-2: #c3fae8;"
assert_contains "css/general.css" "--color-brand-ink: #054d3a;"
assert_contains "css/general.css" "--color-surface: #f8f9fa;"
assert_contains "css/general.css" "--color-surface-low: #f1f3f5;"
assert_contains "css/general.css" "--color-surface-high: #e9ecef;"
assert_contains "css/general.css" "--color-text-strong: #212529;"
assert_contains "css/general.css" "--color-text-body: #495057;"
assert_contains "css/general.css" "--color-text-muted: #6c757d;"
assert_contains "css/general.css" "--color-text-subtle: #868e96;"
assert_contains "css/general.css" "--color-outline: #adb5bd;"
assert_contains "css/general.css" "--color-outline-variant: #dee2e6;"
assert_contains "css/queries.css" "rgba(248, 249, 250, 0.97)"

assert_not_contains "css" "#e67e22"
assert_not_contains "css" "#cf711f"
assert_not_contains "css" "#eb984e"
assert_not_contains "css" "#fdf2e9"
assert_not_contains "css" "#fae5d3"
assert_not_contains "css" "#45260a"
assert_not_contains "css" "rgba(230, 125, 34, 0.5)"
assert_not_contains "css" "rgba(235, 152, 79, 0.35)"
assert_not_contains "css" "rgba(230, 125, 34, 0.35)"
assert_not_contains "css" "rgba(253, 242, 233, 0.5)"

echo "Theme palette checks passed."
