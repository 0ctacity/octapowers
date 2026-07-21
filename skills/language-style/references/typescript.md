# TypeScript Style

## Format and Names

- Follow the repository formatter, linter, and `tsconfig`; do not impose a separate brace or quote style.
- Without a formatter, use two spaces and no tabs, matching the dominant nearby style.
- Use `camelCase` for values and functions, `PascalCase` for types and classes, and meaningful names over abbreviations.
- Prefer named exports unless the framework or established module convention favors defaults.
- Keep type-only dependencies explicit with `import type` where supported by project configuration.

## Types and Safety

- Enable and respect strict checks where project compatibility permits; never weaken configuration as a local shortcut.
- Prefer `unknown` over `any`, then narrow with runtime checks.
- Model variants with discriminated unions and enforce exhaustive handling with `never` where useful.
- Avoid non-null assertions and unsafe casts unless an invariant is established and documented nearby.
- Prefer immutable inputs and `readonly` data when mutation is not part of the contract.
- Let inference handle obvious locals; annotate public boundaries and complex return types.
- Validate external data at runtime: TypeScript types disappear after compilation.

## Performance

- Apply JavaScript runtime guidance for allocation, algorithms, event-loop blocking, and I/O.
- Keep types understandable: prefer named interfaces or aliases over repeatedly expanding large structural types.
- Avoid enormous unions, intersections, and deeply recursive conditional types on widely used boundaries.
- Reuse base types instead of duplicating structurally similar declarations that increase compiler work.
- Measure slow type checking with compiler diagnostics or tracing before redesigning types for build speed.
- Do not trade runtime correctness for compile-time cleverness.

## Verification

- Run the configured formatter, linter, type checker, focused tests, and relevant build.
- For compiler-performance claims, capture `tsc --extendedDiagnostics` or a trace before and after.

## Sources

- [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/)
- [TypeScript Narrowing](https://www.typescriptlang.org/docs/handbook/2/narrowing.html)
- [TypeScript Performance](https://github.com/microsoft/TypeScript/wiki/Performance)
