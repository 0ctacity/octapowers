---
name: performance-investigation
description: Investigate or improve software performance using representative measurements and concrete bottleneck hypotheses. Use for latency, throughput, CPU, memory, allocation, startup, build-time, bundle-size, network, scaling, or performance-regression work. Compare equivalent before-and-after evidence, preserve correctness, and avoid speculative optimization claims.
---

# Investigate Performance with Measurements

Optimize an observed constraint, not an imagined one. Match the depth of investigation to the cost and scope of the problem.

## Define the Target

Identify:

- the user-visible or operational problem;
- the metric that represents it;
- the representative workload, input, scale, and environment;
- the required target or meaningful improvement;
- constraints such as memory, complexity, power, compatibility, or maintainability.

If the user asks only for investigation or analysis, do not modify production code. If the requested metric cannot be measured directly, choose the closest defensible proxy and state the limitation.

## Establish a Baseline

Measure the current behavior before optimizing:

1. Use the smallest benchmark, trace, profiler, or system measurement that represents the problem.
2. Record the workload, environment, configuration, command, and result so the measurement can be repeated.
3. Control obvious noise. Include warm-up and multiple samples when runtime behavior or variance warrants them.
4. Confirm that the measurement exercises the suspected path and does not mainly measure setup, mocks, logging, or unrelated work.
5. Preserve a correctness check for behavior that optimization must not change.

Do not use an unrepresentative microbenchmark as proof of end-to-end improvement.

## Locate the Bottleneck

Inspect relevant evidence such as profiles, traces, query plans, allocation data, I/O timing, network waterfalls, bundle analysis, or system counters.

Form one concrete bottleneck hypothesis that explains the baseline. Test it with the smallest discriminating experiment. If evidence rejects it, revise the model instead of stacking speculative optimizations.

Prefer improving the dominant cost over polishing code that is merely easy to change. Consider algorithmic work, unnecessary computation or allocation, blocking and contention, I/O patterns, caching, batching, data layout, serialization, and transferred bytes only when evidence points there.

## Implement Proportionally

Make the smallest change that tests the confirmed hypothesis.

- Preserve correctness, error behavior, compatibility, and resource limits.
- Include invalidation, staleness, and memory growth when adding caches.
- Include concurrency and backpressure when increasing parallelism.
- Avoid trading a measured bottleneck for an unbounded resource cost.
- Keep readability unless additional complexity buys a demonstrated, worthwhile improvement.

Use test-driven development for non-tiny code changes and retain the baseline measurement for comparison.

## Compare and Report

Compare before and after using the same workload, metric, environment, and measurement method. Repeat noisy measurements and report distributions or ranges when a single number would mislead.

Verify:

1. the relevant correctness checks still pass;
2. the target metric improved;
3. important adjacent metrics did not regress materially;
4. the original user-visible or operational symptom improved when it can be reproduced.

Report the baseline, result, method, scope, tradeoffs, and remaining uncertainty. Distinguish a local benchmark from system-wide evidence. Do not claim an improvement without fresh measurements.
