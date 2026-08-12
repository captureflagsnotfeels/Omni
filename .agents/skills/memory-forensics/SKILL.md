---
name: memory-forensics
description: Analyze authorized Windows, Linux, or macOS memory captures for processes, injected code, credentials exposure, network state, kernel artifacts, and timelines. Use for memory dumps, Volatility analysis, rootkit investigation, and volatile-state DFIR.
---

# Memory forensics

Hash the image, preserve acquisition details, identify OS/build/architecture, and confirm tool/profile compatibility. Work from a copy.

1. Establish capture time, clock context, image integrity, and acquisition limitations.
2. Inventory processes using independent structures; compare active, terminated, hidden/unlinked, parentage, sessions, users, paths, command lines, start/exit times, and handles.
3. Inspect suspicious address spaces for executable private memory, anomalous protections, injected regions, mapped modules, strings/configuration, and thread start addresses. An anomalous region is not automatically injection.
4. Correlate sockets/connections, DNS cache when available, files, registry/configuration, services, drivers/modules, callbacks/hooks, and console/history artifacts.
5. Extract only relevant objects, hash them, and record image offset/process/context. Correlate with disk and event/network evidence.

Use compatible Volatility or platform tooling only after checking version/help. Treat plugin failures, symbol gaps, paging, smear, and acquisition artifacts as limitations. Return exact commands, image facts, findings with offsets/PIDs, correlation, confidence, and uncertainty. Do not claim runtime behavior solely from strings or recovered bytes.

