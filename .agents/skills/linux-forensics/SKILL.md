---
name: linux-forensics
description: Investigate Linux hosts, logs, filesystems, accounts, services, persistence, and privilege changes. Use for Linux compromise triage, timeline reconstruction, SSH analysis, and post-incident forensics.
---

# Linux forensics

Record distribution, timezone, boot IDs, collection method, clock skew, and log retention. Prefer read-only copies or mounted images.

1. Establish sessions and privilege: distro auth logs, `journalctl`, SSH logs/config/authorized keys, `sudo` logs, `su`, account/group files, lastlog/wtmp/btmp, and auditd.
2. Correlate process evidence: journal service events, audit exec records, process accounting when enabled, `/proc` for live response, and EDR telemetry. Shell history may be incomplete, reordered, or tampered with.
3. Inspect persistence: user/system crontabs, `/etc/cron*`, systemd units/timers/drop-ins, init scripts, shell startup files, SSH keys, loaders, PAM, and containers.
4. Inspect files: stat metadata, ownership, ACLs, extended attributes, capabilities, SUID/SGID, package verification/logs, recently changed executables, and deleted-open files.
5. Correlate listening sockets and connections with process ownership and firewall/DNS/proxy evidence.

Targeted commands may include `journalctl --since ... --until ...`, `ausearch`, `last`, `lastb`, `getcap -r <path>`, `find <path> -xdev ...`, `ss -plant`, `systemctl list-timers`, and package-manager verification. Scope paths and time windows; do not launch huge scans by default. Explain gaps and distinguish configuration, attempted action, and confirmed success.

