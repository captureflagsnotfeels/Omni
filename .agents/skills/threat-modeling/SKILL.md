---
name: threat-modeling
description: Build evidence-based security threat models for applications, services, cloud systems, protocols, and architectures. Use for design reviews, trust boundaries, abuse cases, attack surfaces, control selection, and security architecture decisions.
---

# Threat modeling

Establish business objective, assets, sensitive operations, identities, data classifications, architecture, deployment, dependencies, assumptions, and attacker capabilities. Ask only for decisions the available design cannot answer.

1. Diagram components, data/control flows, entry points, privilege levels, and trust boundaries.
2. Identify abuse cases by asset and boundary: spoofing/identity, tampering/integrity, repudiation/audit, disclosure, availability, privilege/authorization, and domain-specific misuse. Framework categories guide coverage; they are not findings.
3. For each threat record preconditions, path, affected asset, existing controls, evidence/assumption, impact, likelihood, detectability, and residual risk.
4. Prioritize concrete attack paths and systemic failures over exhaustive generic lists.
5. Recommend preventive, detective, responsive, and recovery controls with owners and verification criteria. Identify assumptions needing tests.

Return scope/assumptions, architecture and boundaries, prioritized threats, existing control effectiveness, proposed controls, validation plan, and unresolved questions. Keep design risk distinct from a verified vulnerability.

