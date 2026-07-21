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

Create a written design or implementation plan only when the user explicitly requests one. An explicit request includes phrases such as "write a spec," "design this first," "create an implementation plan," or a direct invocation of the corresponding skill.

When the user explicitly requests a written design or implementation plan:

- use `brainstorming` for the written design;
- obtain user approval of the design before creating a written implementation plan;
- obtain user approval of the implementation plan before implementation, unless the user explicitly authorizes automatic execution after planning.

An ambitious request by itself is not a request for a written artifact or an approval gate. For large requests stated as "build," "implement," "fix," or equivalent, create any useful internal spec or plan privately and keep moving.

## Skill Selection

Invoke a skill when its specialized workflow materially helps the task or the user requests it. Do not invoke a skill only because it might be tangentially relevant.

- Bugs and unexpected behavior: use `systematic-debugging`.
- Behavior changes where test-first work is practical: use `test-driven-development`.
- Before claiming completion: use `verification-before-completion`.
- Written design explicitly requested: use `brainstorming`.
- Written implementation plan explicitly requested: use `writing-plans`.
- Parallel agents, worktrees, reviews, and branch-finishing: use them when requested or when they materially improve execution without introducing an unnecessary user gate.

## User Authority

Direct user instructions and project instructions take precedence. If the user says to implement directly, skip written planning. If the user asks only for analysis or a plan, do not implement.

If a consequential decision cannot be inferred safely and would materially change the requested outcome, ask one focused question. Otherwise make a reasonable assumption, state it when relevant, and proceed.

## Platform Adaptation

When platform-specific tool behavior matters, read the matching reference:

- Codex: `references/codex-tools.md`
