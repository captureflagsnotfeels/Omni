---
name: sigma-development
description: Create and review portable Sigma detections with correct logsource, fields, conditions, ATT&CK tags, filters, and test guidance. Use for Sigma rules or converting observed behavior into SIEM-neutral detection logic.
---

# Sigma development

1. Define the observable behavior and minimum telemetry before writing YAML.
2. Select a precise `category`, `product`, and `service`; do not mix incompatible event schemas.
3. Use stable mapped fields and meaningful combinations. Keep selections readable and conditions explicit.
4. Add exclusions only for understood benign behavior; avoid broad negative filters that create blind spots.
5. Set status, level, references, dates, and ATT&CK tags only when justified by behavior.
6. Document field assumptions and backend-specific limitations. Validate YAML, Sigma schema, and conversion with the actual backend pipeline when available.

Include title, id, status, description, references, author, date/modified, logsource, detection, falsepositives, level, and justified tags. Test a positive case, near-miss negative, common benign cases, case/path variations, and missing-field behavior. A valid rule is not necessarily an effective rule; assess volume and coverage after deployment.

