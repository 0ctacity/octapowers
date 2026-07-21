# Octapowers

Octapowers is a proportional software-development workflow for Codex and Claude Code.

It keeps systematic debugging, test-driven development, verification, code review, worktrees, and agent-driven execution while avoiding mandatory specs and written plans for ordinary implementation work.

## Supported coding agents

- Codex App and Codex CLI
- Claude Code

Other coding-agent harnesses are not currently supported.

## Install

### Codex

The local development marketplace lives at:

```text
~/Desktop/VsCode/.agents/plugins/marketplace.json
```

Register it once:

```bash
codex plugin marketplace add ~/Desktop/VsCode
```

Install Octapowers:

```bash
codex plugin add octapowers@personal-dev
```

After editing the plugin, update its cachebuster and reinstall:

```bash
~/Desktop/VsCode/.agents/plugins/update-octapowers.sh
codex plugin add octapowers@personal-dev
```

Start a new Codex task after installation or an update.

### Claude Code

This repository includes a Claude Code plugin manifest and session-start hook under `.claude-plugin/` and `hooks/`. Register this checkout as a local Claude marketplace, then install `octapowers@octapowers-dev` through Claude Code's plugin manager.

## Workflow

Moderate autonomous execution is the default:

1. Inspect the relevant project context.
2. Form an internal approach when useful.
3. Implement the requested change.
4. Verify the result in proportion to risk.
5. Report the outcome and any genuine uncertainty.

Large or ambitious requests do not automatically create written artifacts or approval gates. Written designs and implementation plans are opt-in: when explicitly requested, they are written for review and require approval before the next gated stage.

## Included skills

- `using-superpowers`: proportional workflow routing
- `brainstorming`: opt-in written design
- `writing-plans`: opt-in written implementation plans
- `systematic-debugging`
- `test-driven-development`
- `verification-before-completion`
- `requesting-code-review`
- `receiving-code-review`
- `dispatching-parallel-agents`
- `subagent-driven-development`
- `executing-plans`
- `using-git-worktrees`
- `finishing-a-development-branch`
- `writing-skills`

## Development checks

Run the proportional-routing policy test:

```bash
tests/policy/test-proportional-workflow.sh
```

The repository also contains Codex packaging tests, Claude Code integration tests, shell lint checks, and brainstorming companion tests.

## License and attribution

Octapowers is derived from Jesse Vincent's Superpowers project and remains available under the MIT License. See [LICENSE](LICENSE).
