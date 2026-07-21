---
name: writing-skills
description: Create, edit, or validate reusable agent skills. Use when the user asks to author or revise a skill, its trigger metadata, workflow instructions, references, scripts, or supporting assets.
---

# Writing Skills

Create concise, discoverable skills that add knowledge or process a capable agent would not reliably infer on its own.

## Workflow

1. Understand the intended trigger, expected behavior, and concrete examples.
2. Inspect existing skills and follow the closest established structure.
3. Decide what belongs in `SKILL.md` and what requires a reference, script, or asset.
4. Make the smallest useful change.
5. Validate frontmatter, local references, scripts, and behavior in proportion to risk.
6. Report what changed and how it was checked.

Do not require subagent pressure testing for every edit. Use forward tests when activation behavior is subtle, the workflow is consequential, or wording has repeatedly produced incorrect behavior.

## Structure

Each skill requires:

```text
skill-name/
└── SKILL.md
```

`SKILL.md` must begin with YAML frontmatter containing only:

```yaml
---
name: skill-name
description: What the skill does and the situations in which it should activate.
---
```

Use lowercase hyphenated names and keep the folder name equal to the skill name. Put activation conditions in the description because the body is loaded only after activation.

## Writing Principles

- Keep frequently loaded routing skills especially short.
- Prefer imperative instructions and observable conditions.
- Match strictness to risk: use firm sequences for fragile operations and flexible guidance for judgment-heavy work.
- Avoid universal triggers unless the behavior genuinely applies to every matching request.
- Do not turn optional techniques into automatic approval gates.
- Keep examples few and representative.
- Move detailed reference material out of `SKILL.md` and link it directly.
- Add scripts only for repeated or reliability-sensitive operations, then test them.
- Reuse existing assets and templates instead of duplicating them.

## Validation

At minimum:

- parse the YAML frontmatter;
- confirm required fields and naming;
- check referenced local files exist;
- search for stale names, paths, platforms, and contradictory triggers;
- run relevant repository validation.

For a substantial behavior-shaping skill, test representative prompts with and without the revised guidance when practical. Evaluate whether it activates at the right time and produces the intended degree of ceremony.

Do not commit, push, publish, or install the skill unless the user requests that action.
