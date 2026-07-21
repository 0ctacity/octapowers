# Go Style

## Format and Names

- Run `gofmt`; its tabs, spacing, braces, and import layout are authoritative.
- Use short `MixedCaps` names. Keep local names brief only when their meaning is obvious.
- Package names should be short, lowercase, singular, and free of stutter with exported identifiers.
- Begin exported declarations' comments with the declared name and explain their contract.
- Keep files and declarations organized around cohesive responsibilities, not arbitrary categories.

## Idioms and Safety

- Make zero values useful where practical.
- Return errors explicitly, handle them once, and add concise context without duplicating it at every layer.
- Keep interfaces small and define them near consumers; accept interfaces and return concrete types by default.
- Use pointers to express mutation or avoid copying meaningfully large values, not as a universal default.
- Pass `context.Context` explicitly as the first parameter for cancellable work; do not store it in structs casually.
- Make goroutine ownership, cancellation, channel closure, and shutdown paths obvious.

## Performance

- Prefer clear code first, then use benchmarks and profiles to locate CPU, allocation, blocking, or GC costs.
- Preallocate slices and maps when a reliable size is known, without guessing huge capacities.
- Avoid converting repeatedly between strings and byte slices in hot paths.
- Avoid retaining small subslices of large backing arrays when that keeps unwanted memory alive.
- Reduce allocations at API boundaries only when measurement justifies the added reuse or pooling complexity.
- Use `sync.Pool` only for measured pressure from temporary reusable objects; it is not a general cache.
- Bound concurrency and avoid goroutine-per-item designs when input can grow without limit.

## Verification

- Run `gofmt`, `go vet`, focused tests, and the repository's linters.
- Use Go benchmarks with allocation reporting and `pprof` before making performance claims.

## Sources

- [Effective Go](https://go.dev/doc/effective_go)
- [Go Code Review Comments](https://go.dev/wiki/CodeReviewComments)
- [Go Concurrency Review Comments](https://go.dev/wiki/CodeReviewConcurrency)
