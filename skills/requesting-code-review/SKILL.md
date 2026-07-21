---
name: requesting-code-review
description: Use for a focused self-review of meaningful or risky changes, or when the user explicitly requests independent review. Do not automatically dispatch reviewers, require per-task review, or assume commits exist.
---

# Request Code Review

Use review proportionally. Perform a focused self-review by default for meaningful or risky work. Dispatch an independent reviewer or subagent only when the user explicitly requests one.

## Establish Scope

Review the smallest complete change set that proves the requested outcome:

- use the working diff when changes are uncommitted;
- use a base and head commit when a committed range is relevant;
- include the requirements, affected behavior, and important constraints.

Do not create commits merely to enable review.

## Self-Review

Inspect the actual diff and check:

1. behavior matches the request;
2. edge cases, error paths, security, and compatibility are handled;
3. tests exercise meaningful behavior without overfitting implementation;
4. unrelated changes, accidental complexity, and stale code are absent;
5. documentation or project instructions are updated when required.

Run verification proportional to the risks found. Report actionable findings by severity, or state that no findings were found while naming the verification performed.

## Independent Review

When explicitly requested, give the reviewer a bounded brief containing the goal, requirements, relevant diff or files, constraints, and expected output. Do not rely on inherited session history and do not require per-task commits.

Inspect the returned findings rather than trusting the reviewer's conclusion. Apply `receiving-code-review` to evaluate and address them.
