---
name: verification-before-completion
description: Use immediately before claiming work is complete, fixed, correct, passing, or ready. Require fresh evidence relevant to the claim and report its scope accurately without forcing unrelated or redundant checks.
---

# Verify Before Completion

Do not claim more than current evidence proves.

## Evidence Loop

Before a completion or correctness claim:

1. Define the exact claim and what evidence would prove it.
2. Run the smallest fresh command that directly proves the claim.
3. Read the exit status and relevant output; do not infer success from incomplete logs.
4. Compare the result with the requested behavior and requirements.
5. State the result with its actual scope.

Evidence is fresh when it was produced after the last relevant code, test, configuration, dependency, or environment change. Do not rerun unchanged verification merely because the same result is mentioned again. Rerun when relevant state changed or the earlier result no longer supports the claim.

## Proportional Scope

- Start with focused checks for fast feedback.
- Run broader tests, builds, linters, or platform checks when regression risk warrants them.
- Distinguish a focused check from a full suite: a passing targeted test does not prove every test passes.
- Verify requirements separately from technical checks; a green suite does not prove omitted behavior was implemented.
- If a useful check cannot run, state what was not verified and why.
- Report pre-existing or unrelated failures without claiming they were caused or fixed by the current work.

## Delegated Work

Inspect delegated work instead of trusting an agent's success report. Review the actual changes or artifacts and run verification appropriate to the integrated result.

## Report

Name the checks run, their outcome, and any important coverage limits. If evidence fails, report the actual status and continue working when the requested scope authorizes a fix.
