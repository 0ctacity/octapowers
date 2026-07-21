# Octapowers

Octapowers is an independent fork of [Superpowers](https://github.com/obra/superpowers) 6.1.1 for the Octacity community. It provides a proportional software-development workflow for Codex and Claude Code.

It keeps systematic debugging, test-driven development, verification, code review, worktrees, and agent-driven execution while avoiding mandatory specs and written plans for ordinary implementation work.

Octapowers does not track Superpowers upstream. Its workflow, releases, and future development are maintained independently under [`octacity/octapowers`](https://github.com/octacity/octapowers).

## Supported coding agents

- Codex App and Codex CLI
- Claude Code

Other coding-agent harnesses are not currently supported.

## Install

### Codex

Add the Octapowers marketplace:

```bash
codex plugin marketplace add octacity/octapowers
```

Install Octapowers:

```bash
codex plugin add octapowers@octapowers
```

Start a new Codex task after installation.

To update later:

```bash
codex plugin marketplace upgrade octapowers
codex plugin add octapowers@octapowers
```

Start another new task so Codex loads the updated plugin.

### Claude Code

Add the Octapowers marketplace:

```text
/plugin marketplace add octacity/octapowers
```

Install Octapowers:

```text
/plugin install octapowers@octapowers
```

Run `/reload-plugins` after installation so Claude Code activates Octapowers in the current session.

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
- `language-style`: compact, project-compatible conventions for supported languages
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

Octapowers is an independent fork of Jesse Vincent's Superpowers 6.1.1. It is maintained by Octacity and remains available under the MIT License. See [LICENSE](LICENSE).
