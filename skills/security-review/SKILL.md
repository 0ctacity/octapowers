---
name: security-review
description: Assess or implement security-sensitive software changes involving authentication, authorization, permissions, secrets, sessions, cookies, cryptography, untrusted input, uploads, payments, or other trust boundaries. Use for explicit security reviews and when changed behavior could expose data, privileges, money, code execution, or system access. Ground findings in the actual system, rank real risks, and verify defenses without claiming certification.
---

# Review Security from Evidence

Treat security as a property of the system and its trust boundaries, not a generic checklist. Scale the review to the exposed assets and plausible impact. Do not turn an ordinary low-risk change into a full audit.

## Establish the Security Model

Before judging a change:

1. Identify the protected assets: data, privileges, money, availability, secrets, or execution capability.
2. Identify actors, entry points, trust boundaries, and the authority each component possesses.
3. Trace relevant data from its source through validation, storage, privilege decisions, and sensitive sinks.
4. Inspect existing security conventions, deployment assumptions, and nearby controls before proposing new ones.
5. Separate attacker-controlled input from trusted internal state; do not assume a label such as “internal” makes data safe.

State important assumptions and review limitations. If a critical property depends on infrastructure or configuration that is unavailable, report it as unverified rather than guessing.

## Examine the Relevant Attack Surface

Follow paths applicable to the change rather than mechanically enumerating every category:

- authentication, session lifecycle, credential recovery, and identity binding;
- authorization at every protected operation, including object-level and tenant boundaries;
- input parsing, injection, output encoding, deserialization, and command execution;
- file uploads, filesystem paths, outbound requests, redirects, and resource exhaustion;
- cookies, CSRF, CORS, browser storage, and sensitive response caching;
- secret creation, storage, transmission, rotation, logging, and error reporting;
- cryptographic purpose, key handling, randomness, nonce use, and established primitives;
- race conditions, replay, idempotency, time-of-check/time-of-use, and state transitions;
- dependency, build, deployment, and configuration behavior that changes the trust model.

Do not report a theoretical category without a credible path through the actual code or architecture.

## Make or Recommend Changes

If the user requested implementation:

- fix the earliest trustworthy boundary or root cause instead of scattering superficial checks;
- prefer deny-by-default behavior, least privilege, narrow capabilities, and safe failure modes;
- preserve established security libraries and platform primitives; do not invent cryptography or authentication protocols;
- avoid exposing secrets or sensitive personal data in source, logs, diagnostics, fixtures, or responses;
- add focused positive and negative tests, including attempts that cross the relevant trust boundary;
- keep the change scoped and call out compatibility, migration, or operational consequences.

Do not implement review findings unless the user requested changes.

## Verify

Use the strongest practical evidence for the property under review:

- test authorized and unauthorized paths separately;
- test malformed, boundary, replayed, or adversarial inputs relevant to the threat;
- inspect configuration and dependency behavior where code tests cannot prove the result;
- run focused security tooling when it materially adds evidence, then verify findings manually;
- confirm defenses fail closed and do not leak sensitive information.

Do not weaken a security control merely to make an existing test pass. Resolve whether the test or the intended policy is wrong.

## Report

For each finding, provide:

- the affected asset and precise location;
- the attack preconditions and credible path;
- the observable impact;
- the supporting evidence and confidence;
- the smallest effective remediation.

Rank findings by exploitability and impact, not by scanner labels alone. Distinguish confirmed vulnerabilities, defense-in-depth improvements, and unverified concerns. Do not claim that an assessment proves the system is secure.
