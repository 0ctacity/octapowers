# Python Style

## Format and Names

- Follow the repository formatter and linter. Otherwise use PEP 8: four spaces, never tabs.
- Use `snake_case` for functions and variables, `CapWords` for classes, and `UPPER_CASE` for constants.
- Keep imports at the top, grouped as standard library, third-party, then local; avoid wildcard imports.
- Prefer readable expressions and early returns over deep nesting or dense one-liners.
- Treat the project's configured line length as authoritative; PEP 8's fallback is 79 characters.

## Idioms and Safety

- Use context managers for resources and `with` blocks for scoped cleanup.
- Catch specific exceptions, keep `try` blocks narrow, and preserve exception context.
- Never use mutable objects as default argument values.
- Use comprehensions when simple; use a normal loop when filtering, mutation, or branching becomes hard to read.
- Add type hints at stable boundaries and where they improve tooling; do not obscure straightforward code with elaborate typing.
- Prefer `pathlib`, dataclasses, enums, and standard-library facilities when they fit.

## Performance

- Optimize only after profiling representative workloads with suitable tools such as `cProfile`, `timeit`, or sampling profilers.
- Prefer built-ins and library operations that move loops into optimized implementations.
- Use generators and iterators when streaming avoids materializing large collections; use lists when reuse or indexing is required.
- Build many strings with `str.join`; avoid repeated concatenation in performance-sensitive loops.
- Avoid repeated parsing, serialization, attribute lookup, and allocation in measured hot loops.
- Choose algorithms and data structures before micro-optimizing syntax.
- For CPU-bound parallel work, account for interpreter constraints and serialization costs; measure the actual design.

## Verification

- Run the configured formatter, linter, type checker, and focused tests.
- Benchmark with warm-up and realistic inputs; state Python implementation and version when results matter.

## Sources

- [PEP 8 – Style Guide for Python Code](https://peps.python.org/pep-0008/)
- [Python Profilers](https://docs.python.org/3/library/profile.html)
- [Python `timeit`](https://docs.python.org/3/library/timeit.html)
