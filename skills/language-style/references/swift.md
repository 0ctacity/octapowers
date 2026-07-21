# Swift Style

## Format and Names

- Follow repository `swift-format` configuration or established style.
- Without configuration, use spaces rather than tabs, two-space indentation, and a 100-column target.
- Use `UpperCamelCase` for types and protocols and `lowerCamelCase` for functions, properties, variables, and enum cases.
- Name APIs for clarity at the call site; include argument labels when they make a call read naturally.
- Document public contracts and state the complexity of properties or operations that are not O(1).

## Idioms and Safety

- Prefer value types for independent values and reference types for identity or shared mutable state.
- Use `guard` for preconditions and early exits; keep the successful path visually clear.
- Avoid force unwraps and force casts except for invariants proven locally or test-only setup.
- Model absence and failure with optionals and errors, not magic values.
- Use structured concurrency, propagate cancellation, and isolate shared mutable state.
- Make ownership and lifetime explicit around closures, delegates, and asynchronous work to prevent retain cycles.

## Performance

- Account for copy-on-write: passing collections is usually cheap until mutation, but hidden copies can appear in hot mutation paths.
- Avoid unnecessary bridging, allocation, string conversion, and reference counting in measured hot code.
- Reserve collection capacity when a useful final-size estimate is known.
- Choose structs, classes, borrowing, consuming, and noncopyable types for semantics first; validate performance-sensitive ownership changes.
- Avoid gratuitous `Any`, existential boxing, and dynamic dispatch where profiling shows material cost.
- Measure optimized builds; debug builds can substantially misrepresent Swift performance.

## Verification

- Run the configured formatter, compiler warnings, focused tests, and repository linters.
- Use release/optimized benchmarks and Instruments or an appropriate profiler for performance claims.

## Sources

- [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)
- [Google Swift Style Guide](https://google.github.io/swift/)
- [Swift Performance](https://www.swift.org/documentation/server/guides/performance.html)
