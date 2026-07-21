---
name: dispatching-parallel-agents
description: Use only when the user explicitly requests parallel agents or delegation and two or more tasks can proceed independently without shared state, overlapping file ownership, or sequential dependencies.
---

# Dispatch Parallel Agents

Delegate only after an explicit user request. Do not infer permission from task size, multiple failures, or potential speed gains.

## Check Independence

Before dispatching:

1. Split work into concrete outcomes.
2. Identify dependencies and shared state.
3. Assign non-overlapping ownership of files or responsibilities.
4. Keep coupled work with one agent or sequence it.

Do not parallelize exploratory tasks when agents would investigate the same unknown root cause or edit the same area.

## Write Bounded Briefs

The main agent must write each brief. Include:

- the exact goal and scope;
- essential project context and known evidence;
- owned files or responsibilities;
- constraints and actions that require approval;
- expected verification and returned result.

Do not rely on inherited conversation history. Each agent should execute the assigned work and return a concise summary, relevant evidence, and unresolved issues. Do not request per-task commits unless the user asks for them.

## Integrate

After agents return:

1. Inspect their actual changes or findings.
2. Resolve conflicts and inconsistent assumptions.
3. Run verification appropriate to the integrated result.
4. Report what was delegated and the verified outcome.

The main agent remains responsible for correctness and completion.
