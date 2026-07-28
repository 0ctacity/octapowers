---
name: security-review
description: Analyze a targeted security property, review a change, assess a broader attack surface, or implement security-sensitive software involving authentication, authorization, secrets, sessions, cryptography, untrusted input, uploads, payments, or trust boundaries. Use when behavior could expose data, privileges, money, availability, code execution, or system access. Prove credible paths, calibrate severity, and verify defenses without claiming certification.
---

# Review Security from Evidence

Treat security as a property of the actual system and its trust boundaries, not a generic checklist. Scale the work to the requested scope and plausible impact.

## Select the Scope

- **Targeted analysis:** answer a specific security question or verify a stated property, such as whether an ordinary member can perform an owner-only operation.
- **Change-focused review:** determine how a code, configuration, dependency, or architecture change alters the trust model.
- **Broad assessment:** inspect a larger attack surface only when the user explicitly requests it.

For targeted analysis, define the attacker, asset, entry points, forbidden outcome, expected authoritative control, and environment. Conclude whether the property is protected, vulnerable, or not fully verifiable. Do not silently broaden a targeted request into a repository-wide audit. Mention a directly adjacent critical issue separately.

## Establish the Security Model

Before judging a path:

1. Identify protected data, privileges, money, availability, secrets, and execution capability.
2. Identify actors, entry points, trust boundaries, and the privileges, credentials, network reach, and capabilities each component possesses.
3. Trace relevant data and authority from attacker-controlled sources through parsing, validation, storage, policy decisions, and sensitive sinks.
4. Inspect relevant callers and alternate entry points. Determine whether every reachable path enforces the property and whether lower-level functions incorrectly depend on callers to apply policy.
5. Inspect existing security conventions, deployment assumptions, and nearby controls before proposing new ones.

For a change-focused review, compare the previous and new trust model. Identify newly reachable paths, broadened authority, removed or relocated checks, changed defaults, and newly persisted, logged, or transmitted data.

Distinguish first-party code from generated, vendored, framework, and dependency behavior. Recommend remediation at a controllable layer: configuration, upgrade, wrapper, compensating control, replacement, or upstream report.

State assumptions and limitations. If infrastructure, configuration, or runtime behavior needed to prove a property is unavailable, report it as unverified.

## Examine Relevant Attack Paths

Follow only paths applicable to the scope:

- authentication, recovery, identity binding, session lifecycle, cookies, CSRF, and browser storage;
- authorization at every protected operation, including object, role, and tenant boundaries;
- injection, output encoding, deserialization, command execution, files, paths, outbound requests, redirects, and uploads;
- secrets, cryptographic purpose, key handling, randomness, nonces, logging, caching, and error disclosure;
- replay, idempotency, races, time-of-check/time-of-use, ordering, and state transitions;
- business rules, quotas, pricing, currencies, ownership transfers, approval workflows, one-time actions, and abuse of otherwise valid operations;
- attacker-controlled loops, recursion, parsing or decompression depth, collection or queue growth, request fan-out, concurrency, retries, and expensive cryptographic, filesystem, network, or database operations;
- dependency, build, deployment, and configuration behavior that changes trust or exposure.

Judge validation and encoding against the eventual interpreter and sensitive sink. Syntactic validation alone does not establish authorization, path containment, safe output encoding, query safety, command safety, or safe outbound requests. Numeric identifiers still require authorization.

## Require a Finding Chain

A confirmed vulnerability must identify:

1. an attacker-controlled source or capability;
2. the missing or ineffective control;
3. the reachable sensitive operation;
4. the resulting impact.

If a link is unproven, classify the issue as an unverified concern or defense-in-depth improvement rather than a confirmed vulnerability. Do not report a category merely because a scanner, API, or coding pattern resembles a known weakness.

## Calibrate Severity

Rank findings by exploitability and impact. Consider exposure, required access and privileges, user interaction, reliability, affected users or tenants, reachable records, repeatability, detectability, and mitigating controls. Distinguish internet-accessible from local, unauthenticated from authenticated, administrator from ordinary user, single-record from cross-tenant impact, and disclosure from modification, availability loss, or code execution.

Do not assign severity solely from the vulnerability category. Explain the concrete conditions that justify the rating; use formal scoring only when requested or required by project convention.

## Make or Recommend Changes

When implementation is requested:

- enforce the property at the earliest authoritative boundary instead of scattering superficial checks;
- prefer deny-by-default behavior, least privilege, narrow capabilities, and safe failure modes;
- use established platform primitives; do not invent cryptography or authentication protocols;
- keep secrets and excessive personal data out of source, logs, diagnostics, fixtures, and responses;
- for sensitive state changes, verify that security-relevant events are attributable and observable without recording secrets or excessive personal data;
- add positive and negative tests that cross the relevant trust boundary;
- call out compatibility, migration, and operational consequences.

Do not implement review findings unless the user requested changes.

## Verify Safely

Use the strongest practical evidence for the scoped property. Test authorized and unauthorized paths, alternate entry points, malformed or adversarial inputs, replay and ordering where relevant, configuration behavior, and failure modes. Verify automated-tool findings manually.

Use non-destructive proofs where possible. Do not access unrelated data, persist unauthorized changes, disrupt availability, or expand testing beyond the authorized environment merely to demonstrate impact. Testing deployed or shared systems requires appropriate user authority.

Do not weaken a security control merely to make an existing test pass. Determine whether the test or intended policy is wrong.

## Report

For each finding, give the asset and precise location, attack preconditions and complete finding chain, impact, severity rationale, evidence and confidence, ownership boundary, and smallest effective remediation.

Distinguish confirmed vulnerabilities, defense-in-depth improvements, and unverified concerns. State what was not examined or could not be proven. Do not claim that an assessment proves the system is secure.
