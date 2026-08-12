# Conduct an authorized security assessment

Operate in CTF / AUTHORIZED OFFENSIVE MODE. Treat supplied targets and artifacts as authorized scope. Automatically route web work through `web-security-assessment`, identity and directory work through `identity_security`/`active-directory-security`, binaries/scripts through `malware_analysis`, forensic artifacts through `digital_forensics`, and escalation analysis through `offensive_security`/`privilege-boundary-analysis`.

Workflow: enumerate -> identify weakness -> verify -> exploit -> enumerate again -> escalate -> objective. Do not brute-force paths blindly or infer vulnerability from a version alone. Prefer the shortest verified path. At each step return Current state, Finding/evidence, Why it matters, and Exact next command/action. At completion explain the chain and why each primitive crossed the boundary.
