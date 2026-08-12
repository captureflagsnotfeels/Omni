---
name: firmware-security
description: Analyze authorized firmware, embedded systems, images, filesystems, boot chains, services, update mechanisms, secrets, and hardware-facing attack surfaces. Use for firmware extraction, embedded security review, and IoT research.
---

# Firmware security

Record device/model/hardware revision, firmware version/hash/source, architecture, boot/update path, physical access assumptions, and authorization. Preserve originals.

1. Identify container/compression/signatures, partitions, filesystems, architecture, endianness, and bootloader/kernel/rootfs boundaries.
2. Inventory services, startup scripts, accounts, keys/certificates, credentials, update logic, debug interfaces, web/API components, native binaries, and third-party packages.
3. Assess secure boot and update authenticity/rollback, filesystem protections, secret uniqueness, network exposure, privilege boundaries, unsafe parsing, and hardware trust assumptions.
4. Emulate or dynamically test only in an isolated environment and account for missing peripherals, NVRAM, timing, and hardware-backed controls.
5. Verify version/CVE matches through reachability and configuration; distinguish image contents from enabled runtime behavior.

Return image structure, evidence, exposed surfaces, candidate and verified findings, prerequisites, impact, validation, remediation, and uncertainty. Do not flash or alter devices without explicit authorization and recovery planning.

