---
name: subagent-driven-development
description: Execute delegated development work with subagents only when the user explicitly requests subagent-driven development or invokes this skill by name. Do not trigger for generic delegation, parallel-agent requests, large tasks, ambitious work, or independent task structure.
---

# Subagent-Driven Development

Use subagents only because the user explicitly selected this workflow. The main agent remains responsible for scope, context, integration, verification, and the final result.

## Main-Agent Responsibility

Before dispatching, inspect the project and understand the task well enough to write a precise brief. Bound every subagent to the context supplied by the main agent:

- state the exact objective and definition of done;
- identify owned files, modules, or responsibility;
- include relevant requirements, constraints, interfaces, and project conventions;
- provide only the source context needed for the assignment;
- state what must not be changed;
- specify the verification expected;
- request a concise report of findings, changes, tests, and uncertainty.

Do not expect a subagent to reconstruct unstated intent. If the main agent cannot explain the assignment clearly, inspect further before delegating.

## Dispatch

Delegate one bounded outcome per subagent. Parallelize only assignments that can proceed without conflicting writes or unresolved sequential dependencies.

Tell every implementation subagent:

- it is not alone in the codebase;
- it must not revert or overwrite other agents' work;
- it must stay inside its assigned ownership;
- it should adapt to concurrent changes when necessary;
- it must not commit, push, merge, open a PR, or alter branch history.

The main agent owns all Git history. Do not create per-task commits.

Use the prompt templates in this directory when they fit, but rewrite them to match the actual task rather than filling them mechanically.

## Coordination

1. Record each assignment and its ownership.
2. Dispatch independent assignments concurrently when useful.
3. Answer subagent questions with the missing bounded context.
4. Inspect returned work and reconcile overlaps or interface mismatches.
5. Run integrated verification from the main agent's workspace.
6. Use code review when it materially improves confidence.
7. Report the combined outcome to the user.

Do not ask the user to approve routine transitions between delegated tasks. Stop only for a consequential ambiguity, an unresolved blocker, a required permission, or completion.

## Failure Handling

- If a subagent leaves scope, redirect it with a narrower brief.
- If assignments conflict, stop parallel writes and integrate sequentially.
- If a subagent cannot finish, preserve useful findings and complete or reassign the bounded work.
- Verify the integrated result yourself; subagent success claims are evidence to inspect, not final verification.
