---
name: frontend-design
description: Design, implement, refine, or visually review visible web interfaces. Preserve an existing design language when one exists. For originating designs and explicit redesigns, commit to a product-specific visual premise, one justified visual risk, and a rendered critique-and-refinement pass. Covers art direction, hierarchy, typography, color, composition, interaction, responsiveness, accessibility, and polish without prescribing a technology stack.
---

# Frontend Design

Create interfaces that feel deliberately designed for their product. Existing work requires fidelity; originating work requires a recognizable point of view. Competent but interchangeable output is not sufficient.

## Determine the Work Mode

One request may combine these modes.

- **Existing design:** Extend, implement, repair, or refine an established interface or supplied visual reference.
- **Originating design:** Establish a visual language where none exists, or perform an explicit redesign.
- **Visual review:** Evaluate a rendered interface when the user asks whether it looks polished, consistent, responsive, or professional.

Do not turn ordinary frontend implementation into a design document, prototype exercise, or approval workflow.

## Working Loop

1. Identify the requested surface and work mode.
2. Inspect relevant components, tokens, nearby screens, supplied references, and any existing rendered result.
3. Read the [visual craft reference](references/visual-craft.md) for the relevant design and review criteria.
4. Establish or recover the governing visual direction.
5. Implement the smallest complete surface that expresses that direction.
6. Render representative sizes and consequential states.
7. Critique the rendered result, correct visible weaknesses, and then verify behavior and accessibility proportionally.

When the interface cannot be rendered, state that limitation and verify only the source-level aspects that remain observable.

## Design Authority

Resolve visual decisions in this order:

1. Explicit user instructions and supplied references.
2. Existing design system, tokens, components, and documented brand rules.
3. Nearby screens and established product patterns.
4. Product purpose, audience, content, and platform conventions.
5. This skill's safe defaults.

## Preserve Existing Design

When an existing language is present, inspect it before changing it.

- Reuse its typography, color roles, spacing, radii, borders, shadows, icons, components, and motion language.
- Follow nearby component anatomy, density, and interaction patterns.
- Keep deliberate exceptions whose purpose is evident.
- Limit changes to the requested surface unless a surrounding inconsistency prevents a coherent result.

Do not ask for a new aesthetic, introduce a parallel visual language, or force originality when the product already supplies the answer.

## Originating a Design

Approach originating work as the design lead responsible for giving the product a recognizable visual identity. Make deliberate choices specific to this brief and take one justified visual risk. The risk may involve composition, scale, typography, imagery, interaction, content treatment, or component anatomy; it must serve the product and must not compromise usability or accessibility.

When the request does not provide enough context and a consequential direction cannot be inferred, ask one compact question about character, audience, density, or references. If the user delegated the choice, make it and continue.

### Establish the Direction

Before coding, create a compact internal direction brief:

- **Subject:** What product world, audience, and emotional context should shape the interface?
- **Job:** What single outcome is this surface primarily helping someone achieve?
- **Premise:** What one visual idea governs the composition and atmosphere?
- **System:** What palette roles, type roles, spacing rhythm, and layout structure express that premise?
- **Signature:** What one element will make this interface recognizable and embody the brief?
- **Risk:** What one contextually justified choice moves the work beyond a template?

Keep this direction-setting work internal unless the user asks to see alternatives or a design artifact. Do not create an approval gate. Choose the strongest contextually justified direction and implement it.

### Originality and Art Direction

Seek a visual idea that belongs to the product. Use the product's real content and behavior as design material. Draw from its subject matter, operating environment, data, imagery, vocabulary, tools, physical artifacts, or characteristic interaction.

Translate the premise into connected decisions across layout, typography, color, imagery, component anatomy, interaction, and motion. Originality should emerge from those relationships rather than being added afterward as decoration.

- Prefer one coherent premise over several unrelated stylistic gestures.
- Make structure communicate something true about the content.
- Give typography and composition responsibility for identity; unusual colors alone are insufficient.
- Concentrate distinction in the signature element and let supporting areas remain disciplined.
- Extract principles from references and reinterpret them for the product rather than imitating them literally.

### Reject the Template Answer

Before implementation, challenge the direction:

- Could this direction transfer unchanged to an unrelated product?
- Would the same hero, card grid, dashboard shell, or typography appear for a similar but unrelated prompt?
- Is the signature derived from the product, or is it decoration with a story attached afterward?
- Are visual devices such as labels, numbering, dividers, charts, and containers encoding real information?
- Does the justified risk improve identity or understanding rather than merely attracting attention?

If the direction fails this check, revise the premise, composition, or signature before coding. Avoid interchangeable hero sections, card grids, gradient backgrounds, floating glass surfaces, oversized headings, decorative pills, or unnecessary dashboard tiles unless they genuinely fit.

Do not penalize appropriate convention in established or utilitarian product UI. Familiarity may be correct, with identity expressed through precision, restraint, content treatment, or interaction quality.

### Safe Defaults Are a Floor

If context supplies no stronger direction, begin with low-risk product-interface defaults: readable hierarchy, a neutral foundation with one purposeful accent, coherent spacing, moderate density, familiar controls, restrained motion, and useful narrow-width behavior. Then make them specific through the direction brief; do not stop at generic safety.

Repeated-use product interfaces should prioritize clarity and predictability; marketing and editorial surfaces may use stronger art direction, pacing, imagery, and motion when they serve the message. Data-dense tools may favor compactness and scanning efficiency.

### Build, Critique, Refine

Implement the chosen direction consistently rather than improvising unrelated details during coding. Derive colors, type treatments, geometry, and motion from the direction brief.

Do not stop at the first render. For substantial originating work, inspect screenshots at representative sizes and perform at least one refinement pass. Check whether the premise is visible, the signature lands, hierarchy is immediate, content feels real, composition remains coherent at narrow widths, and decoration can be removed. Preserve what works and correct the highest-impact weakness.

## Visual Review

When the user explicitly requests a review, inspect the rendered interface rather than source alone. Check relevant themes, sizes, states, and realistic content. Distinguish visible defects from preferences, support findings with screenshots or precise locations when possible, and recommend the smallest high-leverage corrections. Use the review procedure in the visual craft reference.

Report inline unless the user requests a persistent review document. Do not present source-only inference as visual evidence.

## Implementation and Verification

- Follow the project's architecture and component conventions.
- Use realistic content and implement relevant empty, loading, error, overflow, disabled, focus, and responsive states.
- Compare the result against the original surface, supplied reference, or nearby established patterns. For originating work, compare it against the chosen direction rather than judging it in isolation.
- Verify keyboard access, focus visibility, contrast, responsive behavior, and reduced motion in proportion to the change.
- State the meaningful sizes, themes, and interactions actually inspected.

## Boundaries

- Do not prescribe a frontend framework, component library, styling system, font, icon set, or fixed aesthetic.
- Do not replace an existing design system without an explicit redesign request.
- Do not broaden a focused change into an unsolicited redesign.
- Do not sacrifice semantics, keyboard behavior, accessibility, responsiveness, or platform conventions for novelty.
- Do not present style tiles, moodboards, or multiple prototype variants as an approval step unless the user requests them. Internal exploration should remain lightweight and should not delay implementation.

## Sources

Informed by and independently adapted from:

- Anthropic's frontend-design skill and aesthetics guidance: https://github.com/anthropics/claude-code/tree/main/plugins/frontend-design
- Emil Kowalski's design-engineering and motion skills: https://github.com/emilkowalski/skills/tree/main/skills
- Jezweb's visual design review skill: https://github.com/jezweb/claude-skills/blob/main/plugins/frontend/skills/design-review/SKILL.md
- UI polish patterns collected by 99Yash: https://gist.github.com/99Yash/0ff311d4faabd16e4daa76c1a0cda68a
