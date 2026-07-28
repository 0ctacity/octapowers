---
name: frontend-design
description: Design, implement, refine, or visually review visible web interfaces. Preserve an existing design language when one exists; when a genuinely new visual direction is required and the request does not provide enough context, obtain one compact direction from the user unless they delegated the choice. Covers layout, hierarchy, typography, color, spacing, responsive behavior, component consistency, interaction states, accessibility, polish, and purposeful motion without prescribing a technology stack.
---

# Frontend Design

Create interfaces that feel intentional, coherent, and appropriate to their product. Treat visual design as contextual judgment, not a fixed aesthetic.

## Determine the Work Mode

One request may combine these modes.

- **Existing design:** Extend, implement, repair, or refine an established interface or supplied visual reference.
- **Originating design:** Establish a visual language where none exists, or perform an explicit redesign.
- **Visual review:** Evaluate a rendered interface when the user asks whether it looks polished, consistent, responsive, or professional.

Do not turn ordinary frontend implementation into a design document, prototype exercise, or approval workflow.

## Working Loop

For implementation or refinement:

1. Identify the requested surface and whether an established visual language exists.
2. Inspect relevant components, tokens, nearby screens, supplied references, and any existing rendered result.
3. Make the smallest coherent change that satisfies the request.
4. Render and inspect changed states and representative sizes.
5. Fix visible regressions before reporting completion.

Stop exploring once the existing language and requested outcome provide enough direction. When the interface cannot be rendered, state that limitation and verify the source-level aspects that remain observable.

## Design Authority

Resolve visual decisions in this order:

1. Explicit user instructions and supplied references.
2. Existing design system, tokens, components, and documented brand rules.
3. Nearby screens and established product patterns.
4. Product purpose, audience, content, and platform conventions.
5. This skill's safe defaults.

Inspect the rendered product and relevant source before changing it. Do not introduce a parallel visual language because another style is fashionable or personally preferable.

## Preserve Existing Design

When an existing language is present:

- Reuse its typography, color roles, spacing scale, radii, borders, shadows, icons, and motion tokens.
- Follow nearby component anatomy and interaction patterns.
- Prefer existing components over visually similar replacements.
- Keep deliberate exceptions when their purpose is documented or evident.
- Limit changes to the requested surface unless inconsistency materially prevents a coherent result.

Do not ask the user to choose a new aesthetic when the product already supplies the answer.

## Originating a Design

When originating a visual language, ask one compact question about the desired character, density, audience, or references only when the request and product context do not already answer it. Do not ask merely because the screen is greenfield.

If the user delegates and the context provides no stronger direction, use low-risk product-interface defaults:

- clear hierarchy and readable content;
- a neutral foundation with one purposeful accent;
- a coherent spacing rhythm and moderate density;
- familiar controls with visible states;
- restrained decoration and motion;
- responsive layouts that remain useful at narrow widths.

Treat these as starting relationships, not mandatory colors, fonts, or component shapes. Make a reasonable choice and continue; do not require a style tile or formal approval.

Adapt expressiveness to the surface. Repeated-use product interfaces should prioritize clarity and predictability; marketing and editorial surfaces may use stronger art direction, pacing, imagery, and motion when they support the message. Data-dense tools may favor compactness and scanning efficiency.

## Originality and Art Direction

Apply this section when originating a design or performing an explicit redesign. Do not default to familiar AI-generated compositions merely because they are safe or quick. Seek a visual idea that belongs to the product.

Before choosing styles, identify one or two characteristics that can meaningfully shape the interface:

- the product's purpose, subject matter, or operating environment;
- the audience's expectations, expertise, or emotional context;
- the content's rhythm, structure, imagery, or data;
- a distinctive interaction, object, metaphor, or spatial relationship;
- an existing brand attribute worth expressing visually.

Translate that premise into a small set of connected decisions across layout, typography, color, imagery, component anatomy, interaction, and motion. Originality should emerge from those relationships, not be added afterward as decoration.

- Prefer one coherent visual premise over several unrelated gestures.
- Use the product's real content and behavior as design material.
- Vary composition, hierarchy, rhythm, proportion, and component anatomy when context supports it; unusual colors or fonts alone do not create identity.
- Avoid interchangeable hero sections, card grids, gradient backgrounds, floating glass surfaces, oversized headings, decorative pills, or unnecessary dashboard tiles unless they genuinely fit.
- Extract principles from references and reinterpret them for the product rather than imitating them literally.
- Concentrate distinction where it creates identity or improves understanding; supporting areas may remain calm.
- Do not pursue novelty at the cost of usability, accessibility, responsiveness, or consistency.

When original art direction matters, ask whether the result could transfer unchanged to an unrelated interface. If it could, reconsider the composition or governing premise before adding decoration. Do not penalize appropriate convention in established or utilitarian product UI. Familiarity may be the right choice, with identity expressed through precision, restraint, content treatment, or interaction quality.

Do not present multiple directions for approval unless the user requests them; choose the strongest contextually justified direction and implement it.

## Visual Craft

### Layout and hierarchy

- Make the primary content and actions apparent without relying on decoration.
- Align related edges and use a deliberate grid or flow.
- Group by proximity before adding containers, borders, or backgrounds.
- Keep whitespace intentional; avoid both crowding and empty space with no structural purpose.
- Support dense interfaces when the work demands density instead of forcing spacious marketing-page conventions.

### Typography

- Build hierarchy through size, weight, leading, and spacing as a system.
- Keep body text comfortable to scan and avoid unnecessarily long lines.
- Tighten large display text carefully; give smaller text sufficient spacing and contrast.
- Balance short heading wraps deliberately; avoid awkward single-word final lines when content and layout permit.
- Use tabular figures for changing numeric values when stable alignment improves scanning.
- Test wrapping, truncation, localization, and user text scaling with realistic content.

### Color and surfaces

- Assign colors semantic roles and use those roles consistently.
- Maintain readable contrast and visible focus indicators.
- Treat established accessibility contrast requirements as a floor, not as a substitute for visual judgment.
- Use borders, shadows, translucency, and elevation only when they clarify grouping or depth.
- Check nested radii and padding optically; identical radii on nested surfaces can look pinched.
- Give images or variable media a subtle edge treatment only when they visually disappear into their background.

### Components and states

- Keep repeated components consistent in anatomy, geometry, icon treatment, and state behavior.
- Implement and distinguish the states relevant to the component and requested flow; do not manufacture unused variants merely to complete a taxonomy.
- Provide hover only for devices that support hover; never depend on hover to reveal essential information.
- Make focus, pressed, active, and current-location states visible.
- Align icons optically rather than trusting geometric centering blindly.
- Keep touch targets usable and controls predictable.

### Responsive behavior

- Design behavior across content-driven breakpoints, not only desktop and phone snapshots.
- Prefer component behavior based on available container space when the component may appear in different layouts; reserve viewport breakpoints for page-level changes.
- Reflow, wrap, collapse, or scroll content deliberately rather than merely shrinking it.
- Preserve hierarchy and primary actions at narrow widths.
- Verify images, navigation, forms, tables, overlays, and long content at representative sizes.

## Motion and Interaction

Use motion to provide feedback, explain spatial relationships, clarify state changes, or prevent jarring transitions. In frequently used product UI, decoration alone does not justify motion.

- The more frequently an interaction occurs, the shorter and subtler its motion should be.
- Keep keyboard-driven and high-frequency actions immediate.
- Start feedback when interaction begins, not only after it completes.
- Preserve spatial continuity: anchored surfaces should relate to their trigger, and exits should make sense relative to entrances.
- Make rapidly repeated and gesture-driven motion interruptible.
- For direct manipulation, track the pointer continuously, preserve the grab offset, and avoid locking input during settling.
- Prefer existing easing and duration tokens. Entrances commonly feel responsive when they decelerate into place; movement already on screen often benefits from easing that accelerates and decelerates smoothly.
- Prefer compositor-friendly properties such as transform and opacity when practical, but measure instead of rejecting every layout animation categorically.
- When animating layout, preserve readable spatial correspondence and avoid repeatedly moving unrelated content during high-frequency actions.
- Avoid `transition: all`; name the properties that should change.
- Respect `prefers-reduced-motion` with a calmer equivalent that preserves necessary feedback.
- Test consequential motion in the rendered interface, on a representative low-powered or touch device when risk warrants it.

Do not add motion merely because a recipe recommends it. Do not impose a fixed press scale, duration, spring, or easing curve when the product context calls for something else.

## Visual Review

When the user explicitly requests a visual review:

1. Inspect the rendered interface rather than reviewing source alone.
2. Check relevant themes, viewports, states, and realistic content.
3. Evaluate layout, hierarchy, typography, color, spacing, consistency, interaction states, responsiveness, accessibility, and motion where present.
4. Distinguish visible defects from subjective preferences.
5. Support findings with screenshots or precise locations when tooling allows.
6. Order findings by user-visible impact and effort.
7. Mention well-executed patterns that should be preserved.
8. Recommend a small set of highest-leverage fixes.

For each finding, name the visible issue, its impact, its precise location, and the smallest credible fix. Group minor polish after higher-impact findings.

Report inline by default. Create a persistent review document only when the user requests one. If rendered inspection or screenshots are unavailable, state that limitation and do not present source-only inference as visual evidence.

## Implementation and Verification

- Follow the project's existing architecture and component conventions.
- Use realistic content and account for empty, loading, error, overflow, and disabled states relevant to the request.
- Inspect the result visually after implementation.
- Compare the result against the original surface, supplied reference, or nearby established patterns rather than evaluating it in isolation.
- Verify keyboard access, focus visibility, contrast, responsive layout, and reduced-motion behavior in proportion to the change.
- Check browser zoom, text enlargement, or compact-density behavior when the affected interface is sensitive to them.
- Briefly state the meaningful viewports, themes, and interactions actually checked; do not imply coverage that was not performed.

## Boundaries

- Do not prescribe a frontend framework, component library, styling system, font, or icon set.
- Prefer native semantic elements and established accessible components over custom visual recreations when they satisfy the design.
- Do not sacrifice document semantics, form behavior, keyboard support, or platform conventions solely for visual novelty.
- Override browser and platform defaults only when the replacement remains complete, accessible, and consistent with the product.
- Do not replace an existing design system without an explicit redesign request.
- Do not present style tiles, moodboards, or multiple prototype variants as an approval step unless the user requests them. Internal exploration should remain lightweight and should not delay implementation.
- Identify usability problems directly caused by visual hierarchy, interaction feedback, responsive behavior, or component consistency. Do not expand into information architecture, product requirements, research, or content strategy unless requested.
- Do not broaden a focused change into an unsolicited redesign.

## Sources

Informed by and independently adapted from:

- Emil Kowalski's design-engineering and motion skills: https://github.com/emilkowalski/skills/tree/main/skills
- Jezweb's visual design review skill: https://github.com/jezweb/claude-skills/blob/main/plugins/frontend/skills/design-review/SKILL.md
- UI polish patterns collected by 99Yash: https://gist.github.com/99Yash/0ff311d4faabd16e4daa76c1a0cda68a
