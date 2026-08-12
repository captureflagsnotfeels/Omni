---
name: windows-forensics
description: Investigate Windows hosts and forensic images using event logs and execution, filesystem, registry, persistence, user, browser, and network artifacts. Use for EVTX analysis, compromise timelines, execution questions, and Windows DFIR.
---

# Windows forensics

Start with acquisition provenance, host timezone, OS/build, users, and artifact coverage. Work on copies and hash material evidence.

- EVTX: inventory channels and record IDs; filter around the question. Correlate Security, System, TaskScheduler, PowerShell Operational, WMI-Activity, Defender, Sysmon, DNS Client, and Firewall where present. Event IDs are channel/provider specific; inspect fields, not ID alone.
- Execution evidence: combine process events, Prefetch, Amcache, Shimcache, SRUM, user-assistive artifacts, and application logs. Prefetch/Amcache/Shimcache semantics vary by OS and do not independently prove full successful execution.
- Filesystem: correlate `$MFT` timestamps and attributes with `$UsnJrnl`; preserve original timestamp values and explain timestamp provenance. Metadata can be altered.
- Registry: load offline hives read-only; inspect Run keys, services, task cache, user profiles, shell extensions, network history, and relevant policy/control settings.
- User activity: examine LNK, Jump Lists, browser databases, downloads, PowerShell history/transcripts, and profile-specific artifacts.
- Persistence: validate task XML/actions, service image path/account/start type, WMI subscriptions, autoruns, and startup locations.

Useful tools when installed: `wevtutil`, `Get-WinEvent`, `EvtxECmd`, `MFTECmd`, `PECmd`, `AmcacheParser`, `AppCompatCacheParser`, `RECmd`, `SQLECmd`, `TimelineExplorer`, `chainsaw`, `hayabusa`, and `plaso`. Check help/version before relying on syntax. Build a normalized timeline retaining raw time and timezone. Never infer execution from file presence alone.

