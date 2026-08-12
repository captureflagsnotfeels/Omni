---
name: yara-development
description: Create and review resilient YARA rules for malware triage using meaningful string combinations, file structure, modules, metadata, and bounded conditions. Use for file-based signatures, family rules, and YARA tuning.
---

# YARA development

Start from a representative positive corpus and benign near-neighbors. Select stable family traits: distinctive code/config fragments, binary structure, imports, compiler-independent constants, or format properties. Avoid one weak string, sample-specific paths, packer-only traits, and easily changed hashes as the sole condition.

Use clear metadata (`description`, `author`, `date`, `reference`, `hash` for provenance). Name strings by meaning; apply `ascii`, `wide`, `nocase`, or `fullword` only when warranted. Bound expensive regex/loops and file reads. Use modules such as `pe`, `elf`, `dotnet`, or `hash` only where supported and useful.

A common condition combines file type/size constraints, structural facts, and several strings, for example: format guard and `2 of ($config*)` and `1 of ($code*)`. Test compilation, true positives, cleanware false positives, truncated/corrupt input, packed/unpacked variants, and performance. Report what the rule detects, required engine/modules, weaknesses, and tuning—not a certainty of maliciousness.

