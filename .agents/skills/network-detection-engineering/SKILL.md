---
name: network-detection-engineering
description: Create, review, tune, and validate Suricata IDS/IPS rules from observed network behavior and protocol evidence. Use for Suricata signatures, PCAP-backed network detections, protocol rules, and false-positive tuning.
---

# Suricata development

Define protocol, direction, network variables, flow state, application layer, observable invariant, and deployment mode before writing a rule.

- Prefer application-layer keywords and sticky buffers over raw payload offsets when protocol parsing is reliable.
- Anchor content with meaningful combinations, ordering, distance/within, flow direction/state, and bounded PCRE only when necessary.
- Use `flowbits`, `xbits`, thresholds, datasets, or multi-stage logic only when a single event cannot express the behavior.
- Assign unique local SID/revision and useful metadata; map ATT&CK only from supported behavior.
- Avoid one weak string, unstable infrastructure, or overly broad TLS/HTTP metadata as the sole signal.

Validate syntax with the installed Suricata version, replay positive and near-miss PCAPs, test stream reassembly/evasion variants, inspect `eve.json`, measure performance and alert volume, and document IPS safety. Return rule, evidence basis, required variables/version, false positives, tuning, evasion limits, and validation commands/results.
