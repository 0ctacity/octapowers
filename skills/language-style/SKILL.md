---
name: language-style
description: Apply project-compatible, idiomatic formatting, API, safety, and performance guidance when implementing or reviewing Rust, Go, Python, TypeScript, JavaScript, Swift, Zig, C, or C++ code. Use only references for languages actually changed; repository conventions, formatter configuration, and nearby code take precedence.
---

# Language Style

Apply the relevant language reference while writing or reviewing supported code. Load only the files needed for the languages actually touched.

## Precedence

Resolve conflicts in this order:

1. Explicit user instructions.
2. Repository instructions and documented conventions.
3. Formatter, linter, compiler, and build configuration.
4. Established nearby code and public API compatibility.
5. This skill's language defaults.

Do not reformat unrelated code or introduce a new tool merely to enforce these defaults.

## Reference Routing

- Rust (`.rs`): `references/rust.md`
- Go (`.go`): `references/go.md`
- Python (`.py`, `.pyi`): `references/python.md`
- TypeScript (`.ts`, `.tsx`, `.mts`, `.cts`): `references/typescript.md`
- JavaScript (`.js`, `.jsx`, `.mjs`, `.cjs`): `references/javascript.md`
- Swift (`.swift`): `references/swift.md`
- Zig (`.zig`): `references/zig.md`
- C (`.c` and C headers): `references/c.md`
- C++ (`.cc`, `.cpp`, `.cxx`, and C++ headers): `references/cpp.md`

Infer whether ambiguous headers are C or C++ from the build, includes, and nearby files. Do not load both JavaScript and TypeScript guidance unless both source languages are being changed.

## Applying Guidance

- Preserve behavior and compatibility unless the request calls for a change.
- Prefer clear, idiomatic code over cleverness.
- Apply obvious low-cost performance improvements, but profile before adding complexity.
- Treat ownership, allocation, copying, concurrency, and data layout as design concerns where the language makes them relevant.
- Use existing formatters and linters on touched files when practical.
- Verify with the repository's normal focused checks.

Performance advice is contextual. For example, in Rust, borrow when ownership is unnecessary and the lifetime remains clear; do not avoid cheap `Copy` values or deliberate clones merely to satisfy a slogan.
