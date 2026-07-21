---
name: finishing-a-development-branch
description: Use only when the user explicitly asks to merge, push, open a pull request, preserve, discard, clean up, or otherwise finish a development branch workflow.
---

# Finish a Development Branch

Use this skill only when the user explicitly asks to finish a branch workflow. Completing implementation alone does not trigger a menu or approval pause.

## Inspect

Before acting, inspect:

- working-tree and index state;
- current branch or detached HEAD;
- base branch and remote configuration when relevant;
- whether the workspace is a normal checkout, a project-created worktree, or a harness-owned workspace;
- verification evidence relevant to the requested action.

Preserve unrelated user changes.

## Execute the Requested Outcome

- **Merge locally:** verify the intended base and source branches, merge without rewriting unrelated history, then run relevant checks on the result.
- **Push or open a PR:** confirm the branch and remote, push only the intended commits, and create the PR when requested. Preserve the workspace for follow-up.
- **Keep the branch:** leave branch and workspace intact and report their state.
- **Discard or delete:** show the exact branch, commits, worktree, and uncommitted changes at risk. Require explicit confirmation immediately before destructive action.
- **Clean up:** remove only resources created by this project workflow and only after their work is safely integrated or explicitly discarded.

Ask only when the requested outcome is ambiguous or a consequential target cannot be determined safely. Do not present a fixed menu when the user already chose an action.

## Worktree Safety

Never remove a harness-owned or externally managed worktree. Treat worktrees under the project's documented worktree directory as project-owned only after verifying their provenance. Move outside a worktree before removing it, and delete a branch only after the worktree no longer references it.

Do not pull, force-push, rewrite history, delete remote branches, or discard work unless the user's request authorizes that action.

## Report

State the branch action performed, verification run, resulting branch or PR state, and any workspace intentionally preserved.
