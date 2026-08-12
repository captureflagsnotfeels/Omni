---
name: microsoft-security-hunting
description: Develop performant Microsoft Sentinel and Defender XDR KQL hunts and detections for endpoint, identity, email, cloud, DNS, network, and process telemetry. Use for KQL queries, Microsoft security hunting, analytics rules, and timeline correlation.
---

# KQL hunting

Confirm product, workspace, table availability, retention, ingestion delay, timezone, and schema before querying. Sentinel and Defender tables differ.

1. Bound `TimeGenerated` first and project only required fields.
2. Normalize identities, hosts, hashes, URLs, and process fields without discarding raw values.
3. Use `summarize`, `arg_min`/`arg_max`, `make_set` with explicit limits, and `bin()` for timelines. Use `materialize()` only when reuse offsets cost.
4. Prefer time-bounded `join kind=innerunique` or `lookup` with defensible keys. Avoid joining only on PID; include device and process-creation identity/time where available.
5. For ancestry, use initiating-process fields and unique process identifiers when the table supplies them. Validate field population.
6. Convert hunts to detections only after measuring volume, latency, missing fields, and benign patterns.

Return product/tables, required fields, query, semantic assumptions, expected matches, false positives, tuning, ATT&CK mapping when justified, and validation. A query that compiles does not establish telemetry coverage.
