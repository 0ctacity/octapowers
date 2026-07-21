---
name: using-git-worktrees
description: Create or enter an isolated Git worktree only when the user explicitly requests a worktree or isolated workspace. Do not trigger automatically for feature work, large tasks, or implementation plans.
---

# Use a Git Worktree

Use this skill only when the user explicitly requests a worktree or isolated workspace. Do not ask again merely to confirm the requested isolation; ask only when a consequential location or branch choice cannot be inferred safely.

## Inspect First

Detect existing isolation before creating anything. Inspect the repository root, current branch or detached HEAD, working-tree status, Git directory, common Git directory, registered worktrees, and whether the repository is a submodule.

If already in a linked worktree, use it and do not create another. Treat detached or harness-managed workspaces as externally owned and report their state.

Preserve unrelated user changes and avoid branch or path collisions.

## Choose the Mechanism

Prefer a platform-native worktree mechanism when available. Native tools understand harness placement and cleanup; do not create parallel manual state that the platform cannot track.

Use `git worktree` only when no suitable native mechanism exists.

## Create a Manual Worktree

Choose the directory in this order:

1. explicit user or project instructions;
2. an existing project-local `.worktrees/` or `worktrees/` directory;
3. `.worktrees/` at the repository root.

Verify a project-local worktree directory is ignored before creating the worktree. If it is not ignored, add the narrow directory entry to `.gitignore` while preserving existing content. Do not commit the ignore change automatically.

Choose a descriptive, non-conflicting branch and path, then create the worktree from the intended base. Verify the resulting path, branch, and registration before continuing.

If permissions or sandboxing block creation, request the necessary scoped approval or report the blocker. Do not silently abandon the requested isolation and continue in the original checkout.

## Prepare and Verify

Follow project instructions and existing lockfiles for dependency setup. Do not invent setup commands or switch package managers. Request approval when setup requires network or external-system access not already authorized.

Run the project's focused baseline verification before implementation. If it fails, distinguish pre-existing failures from setup problems, report the evidence, and ask whether to investigate or proceed with the known baseline.

Report the absolute worktree path, branch state, setup performed, and baseline result.

## Ownership

Do not remove harness-owned or externally managed worktrees. When later asked to integrate or clean up, use `finishing-a-development-branch` and verify provenance before removal.
