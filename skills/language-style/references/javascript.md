# JavaScript Style

## Format and Names

- Follow the repository formatter and linter; they decide quotes, semicolons, wrapping, and trailing commas.
- Without configuration, use two spaces and no tabs, matching nearby code for semicolons and quotes.
- Use `camelCase` for values and functions, `PascalCase` for constructors and classes, and `UPPER_CASE` only for true constants.
- Prefer standard ES modules and explicit imports and exports where the runtime supports them.
- Keep functions focused and control flow shallow; use braces even when a branch is one line.

## Idioms and Safety

- Use `const` by default and `let` only for reassignment; do not use `var` in new code.
- Prefer strict equality and explicit coercion at boundaries.
- Treat input from networks, storage, URLs, and users as untrusted runtime data.
- Use `async`/`await` consistently, handle rejected promises, and preserve cancellation where APIs support it.
- Avoid `eval`, string-built code, implicit globals, prototype mutation, and surprising getter side effects.
- Release timers, subscriptions, event listeners, and other retained resources deterministically.

## Performance

- Profile representative workloads with runtime tools before micro-optimizing syntax.
- Keep long CPU work off latency-sensitive event loops; chunk, defer, or move it only when measurement warrants it.
- Avoid repeated object, array, string, and closure allocation in proven hot paths.
- Batch DOM reads and writes and avoid unnecessary layout-triggering work in browser code.
- Prefer appropriate algorithms and `Map`/`Set` semantics over repeated linear scans when scale justifies them.
- Stream or paginate large data instead of materializing it all when consumers can operate incrementally.
- Avoid retaining large object graphs through listeners, caches, closures, or detached DOM nodes.

## Verification

- Run the configured formatter, linter, tests, and relevant runtime or build checks.
- Compare performance using production-like builds and inputs; development tooling can distort results.

## Sources

- [MDN JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
- [MDN Memory Management](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Memory_management)
- [MDN JavaScript Modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules)
