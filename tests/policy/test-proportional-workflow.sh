#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
router="$repo_root/skills/using-superpowers/SKILL.md"
brainstorming="$repo_root/skills/brainstorming/SKILL.md"
plans="$repo_root/skills/writing-plans/SKILL.md"

assert_contains() {
  local file="$1"
  local pattern="$2"
  if ! grep -Fq -- "$pattern" "$file"; then
    echo "FAIL: expected '$pattern' in $file" >&2
    exit 1
  fi
}

assert_not_contains() {
  local file="$1"
  local pattern="$2"
  if grep -Fq -- "$pattern" "$file"; then
    echo "FAIL: unexpected '$pattern' in $file" >&2
    exit 1
  fi
}

assert_contains "$router" "Treat a moderate workflow as the default"
assert_contains "$router" "Create a written design or implementation plan only when the user explicitly requests one."
assert_contains "$router" "create any useful internal spec or plan privately and keep moving"
assert_contains "$brainstorming" "only when the user explicitly requests a written spec"
assert_contains "$brainstorming" "Do not begin implementation before approval."
assert_contains "$plans" "only when the user explicitly requests a written implementation plan"
assert_contains "$plans" "If the user explicitly says to plan and then execute automatically, that authorization replaces the approval pause."

assert_not_contains "$router" "1% chance"
assert_not_contains "$brainstorming" "This applies to EVERY project"
assert_not_contains "$plans" "Each step is one action (2-5 minutes)"

echo "PASS: proportional workflow policy"
