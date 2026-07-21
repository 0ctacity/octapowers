# Rust Style

## Format and Names

- Treat `rustfmt` and repository configuration as authoritative.
- Without configuration, use four-space indentation, no tabs, and the standard 100-column target.
- Use `snake_case` for functions, methods, variables, and modules; `UpperCamelCase` for types and traits; `SCREAMING_SNAKE_CASE` for constants.
- Keep imports conventional and let `rustfmt` arrange syntax; avoid formatting-only churn.
- Write `///` API documentation that explains contracts, errors, panics, and safety requirements.

## Idioms and Safety

- Model valid states with enums and newtypes instead of flags or sentinel values.
- Prefer iterators, pattern matching, `Option`, and `Result` over manual indexing and exceptional control flow.
- Propagate errors with `?`; add context at abstraction boundaries. Do not `unwrap` expected failures.
- Keep `unsafe` small, document every safety invariant, and expose a safe API around it.
- Accept borrowed forms such as `&str` and slices when ownership is not required; return owned data when the caller must retain it independently.

## Performance

- Prefer borrowing over cloning large or allocating values when ownership is unnecessary and lifetimes remain understandable.
- Do not contort APIs to avoid copying small `Copy` values, and do not remove deliberate clones without checking semantics.
- Reserve capacity for `Vec`, `String`, and hash collections when a useful size estimate is known.
- Avoid collecting an iterator only to iterate it immediately; stream through adapters where clearer.
- Watch repeated allocation, string conversion, reference counting, and lock contention in hot paths.
- Prefer contiguous data and batch work when it improves locality, but benchmark representation changes.
- Profile and benchmark before accepting lifetime complexity, unsafe code, or specialized data structures.

## Verification

- Run `rustfmt`, repository lint checks (commonly Clippy), and focused tests.
- Use release-mode benchmarks or profiling for performance claims; debug timings are misleading.

## Sources

- [Rust Style Guide](https://doc.rust-lang.org/style-guide/)
- [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
- [The Rust Performance Book](https://nnethercote.github.io/perf-book/)
