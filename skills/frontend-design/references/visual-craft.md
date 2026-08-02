# Visual Craft Reference

Use the sections relevant to the surface. They are implementation and review criteria, not a fixed aesthetic.

## Layout and Hierarchy

- Make primary content and actions apparent without relying on decoration.
- Align related edges and use a deliberate grid or flow.
- Group by proximity before adding containers, borders, or backgrounds.
- Keep whitespace intentional; avoid both crowding and empty space with no structural purpose.
- Support dense interfaces when the work demands density instead of forcing spacious marketing conventions.
- Make composition responsive through reflow, wrapping, collapsing, or deliberate scrolling rather than uniform shrinking.

## Typography

- Make typography an active design material, not neutral content delivery.
- Establish explicit display, body, and utility roles where the content needs them.
- Build hierarchy through size, weight, width, leading, tracking, and spacing as a system.
- Keep body text comfortable to scan and avoid unnecessarily long lines.
- Balance heading wraps deliberately and avoid awkward single-word final lines when practical.
- Use tabular figures when stable numeric alignment improves scanning.
- Test wrapping, truncation, localization, realistic content, and user text scaling.
- In originating work, avoid choosing a fashionable typeface merely because it is a familiar agent default; justify it through the premise.

## Color, Imagery, and Surfaces

- Assign colors semantic roles and derive decorative use from the chosen premise.
- Maintain readable contrast and visible focus indicators; treat accessibility contrast requirements as a floor, not a substitute for judgment.
- Prefer a legible dominant relationship with purposeful accents over timid, evenly distributed color.
- Use imagery, texture, patterns, gradients, or atmosphere only when they belong to the subject and strengthen the composition.
- Use borders, shadows, translucency, and elevation only when they clarify grouping or depth.
- Check nested radii and padding optically; identical nested radii can look pinched.
- Give variable media an edge treatment only when it otherwise disappears into the background.

## Components and States

- Keep repeated components consistent in anatomy, geometry, icon treatment, and state behavior.
- Implement states relevant to the requested flow; do not manufacture unused variants to complete a taxonomy.
- Make focus, pressed, active, selected, disabled, loading, error, and current-location states distinct where applicable.
- Provide hover only for devices that support it and never hide essential information behind hover.
- Align icons optically rather than trusting geometric centering blindly.
- Keep touch targets usable and controls predictable.
- Prefer native semantic elements and established accessible components when they satisfy the design.
- Override browser and platform defaults only when the replacement remains complete, accessible, and consistent with the product.

## Responsive Behavior

- Choose breakpoints from content pressure rather than device labels alone.
- Prefer behavior based on available container space when a component can appear in different layouts; reserve viewport breakpoints for page-level changes.
- Preserve hierarchy, primary actions, and meaningful relationships at narrow widths.
- Verify navigation, forms, images, tables, overlays, long content, and overflow at representative sizes.
- Check browser zoom, text enlargement, or compact-density behavior when the affected interface is sensitive to them.

## Motion and Interaction

Use motion for feedback, spatial relationships, state change, or atmosphere justified by the visual premise. More motion is not automatically more designed.

- Prefer one orchestrated high-impact moment over unrelated effects scattered everywhere.
- Make frequent actions shorter and subtler; keep keyboard-driven actions immediate.
- Start feedback when interaction begins, not only after completion.
- Preserve spatial continuity between triggers and anchored surfaces.
- Make repeated and gesture-driven motion interruptible.
- For direct manipulation, track the pointer continuously and preserve the grab offset.
- Prefer existing timing and easing tokens; otherwise choose values that fit the interaction's frequency and distance.
- Prefer compositor-friendly properties such as transform and opacity when practical, but measure consequential performance.
- Avoid `transition: all`; name the properties that should change.
- Respect `prefers-reduced-motion` with a calmer equivalent that preserves necessary feedback.

## Visual Review Procedure

1. Capture or inspect the rendered interface at representative sizes.
2. Check relevant themes, realistic content, and consequential interaction states.
3. Evaluate premise, signature, hierarchy, typography, composition, color, spacing, consistency, responsiveness, accessibility, and motion.
4. Distinguish visible defects from subjective preferences.
5. For each finding, name the visible issue, its impact, its precise location, and the smallest credible fix.
6. Order findings by user-visible impact and effort; group minor polish afterward.
7. Identify patterns that work and should be preserved.
8. Apply the highest-leverage corrections and inspect the affected result again.

When rendered inspection or screenshots are unavailable, state that limitation. Do not claim visual evidence from source inspection alone.
