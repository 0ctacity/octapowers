#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
router="$repo_root/skills/using-superpowers/SKILL.md"
security="$repo_root/skills/security-review/SKILL.md"
performance="$repo_root/skills/performance-investigation/SKILL.md"

assert_contains() {
  local file="$1"
  local pattern="$2"
  if ! grep -Fq -- "$pattern" "$file"; then
    echo "FAIL: expected '$pattern' in $file" >&2
    exit 1
  fi
}

assert_word_count_at_most() {
  local file="$1"
  local maximum="$2"
  local count
  count="$(wc -w < "$file" | tr -d ' ')"
  if (( count > maximum )); then
    echo "FAIL: expected at most $maximum words in $file, found $count" >&2
    exit 1
  fi
}

assert_contains "$router" 'Security-sensitive implementation or an explicit security assessment: use `security-review`.'
assert_contains "$router" 'Performance problems or explicit optimization work: use `performance-investigation`.'

assert_contains "$security" "name: security-review"
assert_contains "$security" "authorization"
assert_contains "$security" "trust boundaries"
assert_contains "$security" "Do not claim that an assessment proves the system is secure."
assert_contains "$security" "Do not implement review findings unless the user requested changes."
assert_contains "$security" "Rank findings by exploitability and impact"

assert_contains "$performance" "name: performance-investigation"
assert_contains "$performance" "Establish a Baseline"
assert_contains "$performance" "Form one concrete bottleneck hypothesis"
assert_contains "$performance" "Compare before and after using the same workload"
assert_contains "$performance" "Do not claim an improvement without fresh measurements."
assert_contains "$performance" "Preserve correctness"

assert_word_count_at_most "$security" 650
assert_word_count_at_most "$performance" 550

echo "PASS: security and performance skill policy"
