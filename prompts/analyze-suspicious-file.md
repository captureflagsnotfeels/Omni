# Analyze a suspicious file

Treat the sample as hostile and use safe static analysis first. Automatically use `malware_analysis` with `malware-analysis`; add `yara-development` when a durable signature is requested and `threat_intelligence` only when external intelligence is necessary.

Identify hashes, true type and metadata, signatures, structure/imports, strings, obfuscation, suspicious functionality, persistence, C2 indicators, embedded configuration, and likely capabilities. Preserve decoded stages. Clearly separate `OBSERVED`/`VERIFIED` behavior from static `INFERRED` capability and runtime `HYPOTHESIS`. Propose isolated dynamic analysis only when needed. Return evidence, indicators with provenance, assessment, safe next action, and uncertainty.
