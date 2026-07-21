---
name: brainstorming
description: Create and validate a written software design when the user explicitly asks for a spec, design document, or design-first workflow. Do not trigger merely because implementation is ambitious, creative, architectural, or multi-step.
---

# Written Design

Turn the user's request into a concise written design that resolves decisions needed before implementation.

## Entry Condition

Use this workflow only when the user explicitly requests a written spec, design document, design-first process, or this skill by name.

Do not use it automatically for feature work. When the user asks to build or change something without requesting a written design, the agent may reason through an internal design and proceed without exposing a document or waiting for approval.

## Workflow

1. Inspect the relevant project context and existing patterns.
2. Identify only the decisions whose answers materially affect the design.
3. Ask focused questions for decisions that cannot be inferred safely. Batch closely related questions when that is more efficient.
4. Present alternatives only when multiple approaches have meaningful tradeoffs.
5. Write a design scaled to the task. Cover architecture, boundaries, data flow, failure behavior, and verification only where relevant.
6. Check the design for ambiguity, contradictions, placeholders, and unnecessary scope.
7. Save it to `docs/octapowers/specs/YYYY-MM-DD-<topic>-design.md`, unless the user specifies another location.
8. Ask the user to approve or revise the written design.

Do not begin implementation before approval. Approval is required here because the user explicitly selected a written design workflow.

## After Approval

- If the user also requested a written implementation plan, invoke `writing-plans`.
- If the user authorized implementation after design approval without requesting a written plan, implement directly using an internal plan as needed.
- If the user requested only a design, stop after delivering the approved design.

Do not commit the design unless the user asks for a commit or the surrounding workflow explicitly includes commits.

## Design Standard

Keep the document decision-focused. Avoid restating obvious requirements, prescribing code that belongs in implementation, or expanding the requested scope. A short design is correct for a small design request.
