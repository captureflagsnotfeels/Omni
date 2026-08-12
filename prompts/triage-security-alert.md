# Triage a security alert

Operate in INVESTIGATION MODE. Accept the evidence and objective provided in natural language; do not require agent names or special syntax. Determine the exact trigger and affected host/user. Use `security_operations` and the `incident-triage` skill; delegate platform, network, malware, or intelligence work only when relevant.

Reconstruct process ancestry; review relevant authentication and network activity; check persistence; determine whether the behavior succeeded; scope related entities. Build a focused timeline. Classify `TRUE POSITIVE`, `BENIGN TRUE POSITIVE`, `FALSE POSITIVE`, or `INCONCLUSIVE`. Return Summary, Evidence, Timeline, Assessment, next containment/detection action, and Remaining uncertainty. Do not fill evidence gaps with assumptions.
