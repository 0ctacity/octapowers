# Zig Style

## Format and Names

- Run `zig fmt`; its whitespace, indentation, and wrapping are authoritative.
- Use `camelCase` for functions, `TitleCase` for types, and `snake_case` for variables unless project conventions differ.
- Let declarations and file structure communicate intent; avoid decorative section comments.
- Prefer explicit, descriptive names at public boundaries and short names only in tight local scopes.
- Keep public documentation focused on contracts, errors, ownership, and allocator expectations.

## Idioms and Safety

- Pass allocators explicitly to code that allocates and make ownership of returned memory unambiguous.
- Pair resource acquisition with `defer`; use `errdefer` to clean up partially completed work.
- Model failure and absence with error unions and optionals, then handle both deliberately.
- Prefer slices over pointer-plus-length pairs and preserve sentinel information only when required.
- Keep `undefined`, pointer casts, and other low-level escape hatches narrowly scoped and justified.
- Do not imitate private fields or hidden control flow that Zig deliberately does not provide.

## Performance

- Use safety-enabled build modes during development; disable runtime safety only at a measured bottleneck with documented invariants.
- Avoid hidden or repeated allocation by reusing buffers or reserving capacity when ownership remains clear.
- Prefer data layouts and access patterns with good locality when measurements show the representation matters.
- Avoid copying large values accidentally; pass pointers or slices when borrowing matches the intended lifetime and mutation.
- Keep compile-time evaluation bounded; moving work to `comptime` is not automatically cheaper overall.
- Inspect generated behavior and benchmark optimized builds before using intrinsics or unsafe transformations.

## Verification

- Run `zig fmt`, focused tests, and the repository's normal build modes.
- Test safety-enabled configurations and benchmark an optimized mode for performance claims.

## Sources

- [Zig Language Reference](https://ziglang.org/documentation/master/)
- [Zig Overview](https://ziglang.org/learn/overview/)
