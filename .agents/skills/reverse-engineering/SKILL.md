---
name: reverse-engineering
description: Reverse engineer authorized native, managed, bytecode, or script targets using disassembly, decompilation, debugging plans, data-flow analysis, and protocol/configuration recovery. Use for binaries, challenge programs, malware internals, patch analysis, and behavior reconstruction.
---

# Reverse engineering

Record hashes, true format, architecture, ABI, compiler/runtime clues, protections, and analysis tool versions. Preserve the original.

1. Map entry points, sections/segments, imports/exports, symbols, resources, strings, relocations, and control-flow landmarks.
2. Identify input sources, parsing/state logic, transformations, cryptographic use, persistence/network functions, privilege boundaries, and output sinks. Rename functions and types based on evidence, not guesses.
3. Trace important values backward from sensitive sinks and forward from attacker-controlled inputs. Confirm decompiler output against disassembly where semantics matter.
4. For debugging, use an isolated environment, explicit breakpoints/watchpoints, controlled inputs, snapshots, and recorded state. Account for ASLR, optimizations, anti-debugging, and self-modification.
5. For patch diffing, compare changed invariants and reachable behavior, not byte differences alone.

Return functions/offsets, evidence, reconstructed logic, inputs/outputs, observed versus inferred behavior, a safe validation plan, and uncertainty. Do not infer exploitability or malicious intent from complexity, packing, or decompiler artifacts alone.

