---
name: test-driven-development
description: Use by default before implementation for every non-tiny feature, bug fix, refactor, or behavior change. Require a failing automated check before production changes and strict red-green-refactor. Skip for trivial mechanical edits or when the user explicitly says not to write tests, not to use TDD, or gives an equivalent instruction.
---

# Test-Driven Development

Write the test first, observe the expected failure, then write the minimum production code needed to pass it.

## Entry Condition

TDD is the default for every non-tiny implementation change. Do not use for trivial mechanical edits such as typos, comments, formatting, or an obvious line or two without meaningful behavior risk.

Practicality changes the form of the failing check, not the default. Choose the smallest useful unit, integration, contract, compile, snapshot, or validation test. For generated output, test the generator or its contract. For configuration behavior, use a validation or integration check that demonstrates the missing outcome.

An explicit user instruction to skip tests or TDD overrides the default. Examples include “do not write tests for this,” “skip tests,” and “do not use TDD.” Do not infer this override from urgency, speed, or silence.

“Do not write tests” does not also mean “do not run tests.” Run existing verification unless separately prohibited; then report the limitation.

Once selected, the red-green-refactor order is mandatory. Do not silently substitute tests-after because the change appears easy.

## Core Rule

Do not write production behavior for an increment until a test demonstrates that the behavior is missing or incorrect.

If production code was written first, revert production code written during this task and restart from the failing test. Do not preserve it as a template for the test-first implementation. Never delete or overwrite pre-existing user code to enforce this rule; revert only the premature changes made for the current increment.

## Red → Green → Refactor

### RED

Write one focused test that describes externally meaningful behavior:

- give it a clear behavioral name;
- exercise real code and mock only genuine boundaries;
- keep failure attributable to one missing or incorrect behavior.

Use the project's configured test command. Run the focused test and confirm it fails for the expected reason. An expected compile failure can be a valid red state in a statically typed project.

If the test passes immediately, it does not demonstrate the new behavior is missing; correct the test or confirm the behavior already exists. If it fails because of broken setup or a typo, fix that and rerun until the failure is meaningful.

### GREEN

Implement the simplest production change that passes the test. Do not add unrequested options, speculative abstractions, unrelated refactoring, or additional behavior.

Run the focused test again. Fix production code when the behavioral expectation is correct; do not weaken the test merely to obtain green.

### REFACTOR

Only after green, improve names, structure, or duplication without adding behavior. Keep relevant tests green throughout. Treat a pure behavior-preserving refactor as this phase: establish a verified green baseline first and work in small green steps.

Repeat the cycle for the next behavior increment.

## Bugs and Completion

For a reproducible bug, write the smallest regression test that fails because of the bug before applying the fix.

Before completion, confirm:

- every behavior increment was observed red for the expected reason;
- minimal implementation made it green;
- relevant regression checks pass after refactoring;
- edge cases and error behavior required by the task are covered.

If a selected increment cannot be tested meaningfully, stop and explain the constraint rather than pretending tests-after followed TDD.

Read [testing-anti-patterns.md](testing-anti-patterns.md) when introducing mocks, test utilities, or test-only production hooks.
