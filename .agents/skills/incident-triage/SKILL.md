---
name: incident-triage
description: Rapidly triage security alerts and suspected incidents using endpoint, identity, process, network, and persistence evidence. Use for SOC alerts, EDR cases, suspicious users or hosts, scoping, and final disposition.
---

# Incident triage

1. Record alert rule, trigger fields, source, time/timezone, host, user, and stated scope.
2. Preserve raw evidence; create a fact table before interpreting.
3. Reconstruct process ancestry with exact image, command line, PID/PPID, user, integrity, signer/hash, and start time. Confirm parent-child linkage, not merely temporal proximity.
4. Review nearby successful and failed authentication, session type/source, account changes, and remote access.
5. Correlate DNS, connection, proxy, firewall, and EDR network telemetry; distinguish each network stage.
6. Check persistence and security-control changes targeted to the behavior.
7. Determine whether the attempted behavior succeeded and scope related hosts, users, hashes, and infrastructure.
8. Test the strongest benign and malicious hypotheses. Select the next artifact that best separates them.
9. Classify `TRUE POSITIVE`, `BENIGN TRUE POSITIVE`, `FALSE POSITIVE`, or `INCONCLUSIVE`.

Return Finding, Evidence, Interpretation, Next action; then timeline, scope, confidence, and uncertainty. Avoid broad enumeration until targeted evidence is exhausted.

