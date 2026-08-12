---
name: application-security
description: Assess application and product security across architecture, source code, dependencies, supply chain, authentication, authorization, secrets, cryptography, web APIs, and secure design. Use for AppSec reviews, threat modeling, code security review, dependency risk, and remediation design.
---

# Application security

1. Establish product objective, architecture, data sensitivity, identities, trust boundaries, deployment context, and attacker capabilities.
2. Trace real entry points and data/control flows before scanning. Review authentication, authorization, tenant/object isolation, validation and output handling, session/token lifecycle, secrets, cryptography, file handling, outbound requests, deserialization, concurrency/state, logging, and failure behavior.
3. Review dependencies and build/release paths: manifests, lockfiles, provenance, update policy, CI permissions, artifact integrity, package confusion, and untrusted build inputs. A CVE/version match is a lead until reachability and environmental prerequisites are verified.
4. For code findings, identify source, sink, guards, execution path, preconditions, boundary crossed, impact, and a safe reproduction. Distinguish theoretically dangerous code from reachable behavior.
5. Rank by demonstrated impact and likelihood. Recommend the smallest root-cause fix plus regression tests and defense in depth.

Use `web-security-assessment` for live authorized testing and `vulnerability-research` for deeper reproduction. Return finding, affected path/component, evidence, preconditions, exploitability, impact, remediation, validation, and uncertainty. Avoid style-only security commentary.
