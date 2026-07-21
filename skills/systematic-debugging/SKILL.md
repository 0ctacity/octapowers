---
name: systematic-debugging
description: Use when diagnosing a bug, failing test, performance regression, build failure, or unexpected behavior. Gather evidence and test a concrete root-cause hypothesis before implementing a fix, with depth proportional to the problem.
---

# Debug Systematically

Find where expected and actual behavior diverge before changing production code. Scale the investigation to the issue; a clear local failure does not require ceremony, while intermittent or multi-component failures need stronger evidence.

## Investigate

1. Read the complete error, failure, or symptom.
2. Reproduce it reliably when possible and record the smallest useful reproduction.
3. Inspect recent changes, configuration, environment, and nearby working examples.
4. Trace the bad state or value backward to its source.
5. At component boundaries, inspect inputs, outputs, state, and configuration to locate the failing layer.

Prefer read-only evidence first. Add temporary diagnostics only when existing evidence cannot locate the divergence, and avoid exposing secrets in logs.

If the issue cannot be reproduced, state what is known and gather better evidence rather than guessing.

## Test a Hypothesis

State one concrete hypothesis and the evidence supporting it. Test it with the smallest discriminating experiment.

- If confirmed, implement the smallest root-cause fix.
- If rejected, remove temporary changes and form a new hypothesis from the new evidence.
- Do not stack multiple speculative fixes or broaden scope with unrelated refactoring.

Repeated failed hypotheses should trigger a reassessment of assumptions, hidden coupling, environment, and architecture. There is no fixed attempt count; escalate when evidence shows the current model is inadequate.

## Fix and Verify

Add a regression test when practical and confirm that it fails for the original reason before the fix. For changes where automated regression testing is not useful, use the strongest repeatable verification available and explain the limitation.

After the fix:

1. verify the original symptom is resolved;
2. run relevant surrounding checks;
3. remove temporary diagnostics;
4. report the root cause, evidence, fix, and verification.

## Supporting Techniques

Read only the relevant companion when needed:

- `root-cause-tracing.md` for tracing invalid state backward;
- `condition-based-waiting.md` for replacing arbitrary timeouts;
- `defense-in-depth.md` for justified validation at multiple boundaries;
- `test-driven-development` for meaningful fixes where a useful failing test is practical.
