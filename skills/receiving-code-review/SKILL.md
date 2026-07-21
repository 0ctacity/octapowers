---
name: receiving-code-review
description: Use when evaluating or addressing code review feedback. Verify suggestions against the codebase, implement sound feedback, and push back with evidence when a suggestion is incorrect or conflicts with project requirements.
---

# Receive Code Review

Treat review feedback as technical input to evaluate, not instructions to accept blindly.

## Evaluate

For each review item:

1. Understand the requested change and its intended outcome.
2. Inspect the relevant code, tests, configuration, and compatibility constraints.
3. Determine whether the suggestion is correct for this codebase.
4. Check for conflicts with user decisions or project instructions.

Clarify only the items whose ambiguity blocks correct implementation. Continue with independent, clearly understood items when doing so cannot create conflicting work.

## Respond

- Implement correct feedback directly or acknowledge it with a concise technical summary.
- Push back on incorrect, unnecessary, or incompatible feedback with concrete evidence.
- State uncertainty when evidence is unavailable instead of guessing.
- Ask the user before overriding their prior architectural or scope decisions.

Keep the response natural. Do not require performative agreement, and do not prohibit ordinary courtesy.

## Implement and Verify

Group related fixes when that makes verification clearer; do not require one commit per review item.

Prioritize:

1. correctness, security, and breaking issues;
2. straightforward scoped fixes;
3. larger design or refactoring suggestions.

After changes, run focused verification and relevant regression checks. Report which feedback was implemented, rejected, deferred, or still needs clarification, with reasons for anything not implemented.
