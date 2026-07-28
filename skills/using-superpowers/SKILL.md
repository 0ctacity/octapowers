---
name: using-superpowers
description: Always-active router for software work. Consult at the start of every request to select and apply relevant Octapowers skills proportionally, without turning ordinary implementation into a spec or approval process.
---

# Consult Octapowers, Then Act Proportionally

Consult Octapowers at the start of every request. Briefly determine whether a specialized skill would materially improve the work, then apply relevant skills proportionally.

Octapowers is always active, but its individual skills are not. Consulting this router does not itself require a written design, implementation plan, approval gate, worktree, subagent, or visible process. Skills are tools, not mandatory ceremony.

## Default Workflow

Treat a moderate workflow as the default, even when the requested change appears ambitious:

1. Inspect the relevant project context.
2. Resolve ordinary implementation details using sound judgment and existing project patterns.
3. Form an internal approach or internal plan when useful.
4. Implement the requested change.
5. Verify the result in proportion to risk.
6. Report what changed, verification performed, and any genuine uncertainty.

Continue autonomously. Do not ask for approval merely because the task is large, multi-step, or would benefit from internal planning.

## Written Design and Plan

Create a written design or implementation plan only when the user explicitly requests that artifact or gated workflow. Examples include "write a spec," "create a design document," "design this first and wait for approval," or "create an implementation plan." Invoking `brainstorming` by name without requesting a document selects exploratory brainstorming, not a written design.

When the user explicitly requests a written design or implementation plan:

- use `brainstorming` for the written design;
- obtain user approval of the design before creating a written implementation plan;
- obtain user approval of the implementation plan before implementation, unless the user explicitly authorizes automatic execution after planning.

An ambitious request by itself is not a request for a written artifact or an approval gate. For large requests stated as "build," "implement," "fix," or equivalent, create any useful internal spec or plan privately and keep moving.

## Skill Selection

Invoke a skill when its specialized workflow materially helps the task or the user requests it. Do not invoke a skill only because it might be tangentially relevant.

- Bugs and unexpected behavior: use `systematic-debugging`.
- Security-sensitive implementation or an explicit security assessment: use `security-review`.
- Performance problems or explicit optimization work: use `performance-investigation`.
- Use `test-driven-development` by default for every non-tiny implementation or behavior change. Skip it for trivial mechanical edits. Skip TDD when the user explicitly says not to write tests, not to use TDD, or gives an equivalent instruction.
- Before claiming completion: use `verification-before-completion`.
- Brainstorming, ideation, option exploration, or written design explicitly requested: use `brainstorming`. Only the written-design mode creates an artifact and approval gate.
- Written implementation plan explicitly requested: use `writing-plans`.
- Subagent-driven development, parallel-agent dispatch, and worktrees: use only when the user explicitly requests them.
- Code review: perform proportional self-review when it materially improves confidence; use an independent reviewer only when the user explicitly requests one.
- Branch finishing: use only when the user explicitly asks to merge, push, open a PR, discard, clean up, or otherwise finish the branch workflow.
- Implementing or reviewing supported language code: use `language-style`, loading only the references for languages actually changed.

## User Authority

Direct user instructions and project instructions take precedence. If the user says to implement directly, skip written planning. If the user asks only for analysis or a plan, do not implement.

If a consequential decision cannot be inferred safely and would materially change the requested outcome, ask one focused question. Otherwise make a reasonable assumption, state it when relevant, and proceed.

## Project Memory

When the user explicitly asks to remember a project-specific instruction, record it in the closest applicable `AGENTS.md`. Treat phrases such as "remember this for this project," "always do this here," and "add this to the project instructions" as explicit requests. Do not infer durable intent from an ordinary task instruction.

Inspect existing guidance first. Integrate the new instruction into the appropriate section instead of blindly appending or duplicating it. If no applicable file exists, create `AGENTS.md` at the repository root. Use a nested file only when the instruction is intentionally limited to that subtree.

Keep remembered instructions concise and actionable. Do not persist secrets, temporary task details, guesses, information already evident from the codebase, or rules that conflict with existing guidance without resolving the conflict.

Whenever this changes an `AGENTS.md`, state that `AGENTS.md` was updated and summarize what it will remember in the final response.

## Platform Adaptation

When platform-specific tool behavior matters, read the matching reference:

- Codex: `references/codex-tools.md`
