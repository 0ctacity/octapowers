# C Style

## Format and Names

- Follow the repository's `.clang-format` or written convention; C has no universal indentation standard.
- Without project guidance, use four spaces, no tabs, K&R braces, and a 100-column target.
- Use consistent `snake_case` names, uppercase macro names, and namespaced public symbols for libraries.
- Put declarations close to use, initialize objects, and keep headers self-contained with include guards.
- Use comments for contracts, ownership, units, invariants, and non-obvious constraints—not restating syntax.

## Correctness and Safety

- Make ownership, lifetimes, buffer capacities, and nullability explicit in APIs.
- Check allocation, I/O, conversion, and system-call results; preserve useful error information.
- Prevent signed overflow, truncation, out-of-bounds access, use-after-free, double-free, and invalid shifts.
- Use `size_t` for object sizes and indices where appropriate, while checking conversions and arithmetic overflow.
- Use `const` to express non-mutation and limit mutable global state.
- Prefer functions and typed constants over function-like macros; parenthesize unavoidable macro parameters and results.
- Keep undefined behavior out of optimizations; compilers may assume it never occurs.

## Performance

- Profile optimized builds before changing readable code or data representation.
- Prefer contiguous data and predictable access when locality matters.
- Move repeated allocation and setup out of hot loops; reuse storage with clear ownership.
- Batch I/O and system calls when latency and buffering semantics permit.
- Help vectorization with simple loops, valid aliasing assumptions, and explicit contracts—never false promises.
- Choose algorithms first; validate cache, branch, allocation, and synchronization hypotheses with measurements.

## Verification

- Run the configured formatter, warnings at the project's expected strictness, static analysis, and focused tests.
- Use sanitizers and dynamic analysis where supported, then benchmark a production-equivalent optimized build.

## Sources

- [SEI CERT C Coding Standard](https://wiki.sei.cmu.edu/confluence/display/c)
- [ClangFormat documentation](https://clang.llvm.org/docs/ClangFormat.html)
- [Linux kernel C style](https://www.kernel.org/doc/html/latest/process/coding-style.html)
