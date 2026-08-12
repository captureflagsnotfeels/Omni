---
name: privilege-boundary-analysis
description: Find and verify Windows or Linux privilege-escalation paths by analyzing identities, boundaries, permissions, execution contexts, and misconfigurations. Use in authorized tests, labs, CTFs, and defensive exposure reviews.
---

# Privilege escalation

Record current identity, groups/tokens, integrity/UID, host/container boundary, target privilege, and objective. Enumerate only categories relevant to the platform and evidence.

Linux: sudo rules and command semantics; SUID/SGID; file capabilities; writable services/units/scripts; cron/timers; PATH/environment/library injection; sensitive groups/sockets; mounts/NFS; credentials; kernels only after configuration and exploit prerequisites; container runtime and namespace boundaries.

Windows: token privileges/groups/integrity; service paths, ACLs, accounts, and recovery actions; scheduled tasks; autoruns; installer/policy settings; writable binaries/DLL search paths; credentials/secrets; local group relationships; impersonation primitives; driver/kernel paths only after exact build and mitigation verification.

For each candidate state boundary, primitive, required control, evidence, verification, reliability, side effects, and expected result. Use permission inspection before modification. Prefer the simplest reliable reversible path; do not run generic exploit scripts blindly. After elevation, verify identity and enumerate again.
