# C++ Style

## Format and Names

- Follow the repository's `.clang-format` and naming conventions; consistency with surrounding code outranks a universal house style.
- Without project guidance, use four spaces, no tabs, K&R braces, and a 100-column target.
- Keep headers self-contained, minimize their dependencies, and use namespaces rather than name prefixes for internal organization.
- Prefer clear names and conventional operators; comments should explain contracts, ownership, complexity, and invariants.
- Do not reformat unrelated legacy code while making a focused change.

## Idioms and Safety

- Use RAII for every resource and value semantics by default.
- Use raw pointers and references for non-owning access; use `unique_ptr` for sole dynamic ownership and `shared_ptr` only for genuine shared ownership.
- Pass small cheap values by value and large read-only objects by `const&`; accept by value when the function will take ownership and move.
- Prefer standard containers, algorithms, ranges, and vocabulary types over hand-written ownership machinery.
- Avoid naked `new`/`delete`, C-style casts, owning raw pointers, and manual cleanup paths.
- Express invariants in types and use compiler-enforced lifetime and const correctness where practical.

## Performance

- Measure before optimizing; low-level or template-heavy code is not automatically faster.
- Reserve container capacity when growth is predictable, but do not over-reserve blindly.
- Avoid accidental copies of large values; use references, moves, views, and spans when their lifetime contract is sound.
- Do not add `std::move` to local return values when it can inhibit copy elision.
- Prefer contiguous containers and locality-friendly layouts when benchmarks show data access dominates.
- Avoid `shared_ptr`, virtual dispatch, allocation, and synchronization in hot paths only when measurements justify a different design.
- Consider compile time and code size when expanding templates, constexpr computation, or many instantiations.

## Verification

- Run the configured formatter, strict compiler warnings, static analysis, focused tests, and sanitizers where supported.
- Benchmark optimized builds with representative inputs and record compiler, flags, and environment for meaningful comparisons.

## Sources

- [C++ Core Guidelines](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines)
- [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)
- [LLVM Coding Standards](https://llvm.org/docs/CodingStandards.html)
