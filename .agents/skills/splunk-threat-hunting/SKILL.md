---
name: splunk-threat-hunting
description: Develop and tune performant Splunk SPL for security hunting across process, authentication, PowerShell, DNS, network, registry, and account telemetry. Use when querying Splunk or producing SPL detections and timelines.
---

# Splunk hunting

Identify index, sourcetype/data model, time range, timezone, and actual field names before writing logic. Filter early on indexed fields; specify fields; aggregate late. Prefer CIM/tstats only when acceleration and mappings are confirmed.

Patterns:

```spl
index=endpoint earliest=-24h (EventCode=4688 OR EventCode=1)
| fields _time host user process_name process_path process_command_line parent_process_name parent_process_id process_id
| sort 0 _time
```

```spl
index=windows earliest=-24h (EventCode=4624 OR EventCode=4625)
| stats count min(_time) AS first max(_time) AS last values(Logon_Type) AS logon_types values(src_ip) AS sources BY host user EventCode
| convert ctime(first) ctime(last)
```

For PowerShell use 4103/4104 and process telemetry; for account creation use 4720 plus later group changes; for registry use Sysmon 12-14 or normalized EDR fields; for DNS and network correlate on host/process/time without claiming causation.

Use `stats`, `eventstats`, and explicit join keys; avoid `transaction` and `join` unless their bounded semantics are required. Use `dedup` only when discarding duplicates is intentional. For ancestry, normalize PID/PPID plus host and boot/process-start context; PID alone is unsafe. Return required fields, query, assumptions, expected result, false positives, tuning, and validation.
