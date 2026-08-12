---
name: security-workflow
description: Route and conduct general authorized cybersecurity work from ordinary-language requests without requiring named agents or special syntax. Use for any mixed or initially ambiguous security task, including red/blue/purple work, SOC and DFIR investigations, malware, threat hunting, detections, AD, networks, OSINT, research, pentests, labs, and CTFs.
---

# Cyber workflow

1. Extract objective, authorization context, targets, evidence paths, constraints, and desired outcome from the request. Inspect supplied artifacts before asking for details that local context can answer.
2. Select the capability domain from `AGENTS.md`. Use `INVESTIGATION MODE` for evidence-led defensive, forensic, malware, intelligence, and research questions. Use `CTF / AUTHORIZED OFFENSIVE MODE` for an explicitly identified challenge, lab, test, or simulation. For general security knowledge or engineering, stay generalist. State the choice in one line when it affects execution.
3. Start with the smallest useful evidence inventory. Choose the next action by information gain, risk, cost, and reversibility.
4. Load only relevant specialist skills. Delegate independent read-heavy work when it materially helps; keep synthesis and conflicting-claim resolution with the primary agent.
5. Maintain claim labels, exact evidence, provenance, and semantic distinctions required by `AGENTS.md`.
6. Stop and ask only for unclear authorization/scope, a consequential operator choice, missing inaccessible evidence, or approval for an action that requires it.

Route by evidence and objective:

- alert/host/logs/hunting -> Blue Team lead, `incident-triage`, and `windows-forensics` or `linux-forensics`;
- volatile memory image -> `memory-forensics`; add `malware-analysis` for extracted suspicious code;
- email/phishing/BEC -> `email-analysis`; add `malware-analysis` for attachments and `incident-triage` for scope;
- source/design/dependencies/web/API -> `application-security`, then `web-security-assessment` for live authorized validation;
- architecture/trust boundaries/abuse cases -> `threat-modeling`;
- cloud/IAM/container/Kubernetes/IaC/CI-CD -> `cloud-security`;
- PCAP/network telemetry -> `network-forensics`;
- suspicious file/script -> `malware-analysis`, then `yara-development` if requested;
- AD/authentication/path -> `active-directory-security`; add `privilege-boundary-analysis` when crossing a local boundary;
- web target -> `web-security-assessment`;
- detection request -> `splunk-threat-hunting`, `microsoft-security-hunting`, `sigma-development`, `yara-development`, or `network-detection-engineering` matching available telemetry;
- IOC/public-source research -> `open-source-intelligence`; use current authoritative sources;
- ATT&CK/purple exercise -> `mitre-mapping` plus detection skills;
- suspected vulnerability/reproduction/root cause -> `vulnerability-research` plus the target-specific skill;
- binary internals/patch/debugger -> `reverse-engineering`;
- IDS/IPS rule from network behavior -> `network-forensics` plus `network-detection-engineering`;
- Microsoft Sentinel/Defender hunt -> `microsoft-security-hunting` plus `incident-triage` when investigating an event;
- scanner/CVE backlog/prioritization -> `vulnerability-management`;
- mobile package/app -> `mobile-security`; firmware/image/embedded device -> `firmware-security`;
- CTF/assessment/adversary simulation -> offensive-security analysis, then `web-security-assessment`, `active-directory-security`, `malware-analysis`, forensic, or `privilege-boundary-analysis` skills as evidence warrants.

Return a direct answer when one specialist is sufficient. For complex work, return a unified timeline or attack path, not disconnected agent summaries.
