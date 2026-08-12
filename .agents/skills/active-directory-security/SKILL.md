---
name: active-directory-security
description: Analyze Active Directory identities, authentication, permissions, trusts, delegation, AD CS, and attack paths in authorized environments. Use for AD enumeration, BloodHound interpretation, Kerberos/NTLM issues, and domain security investigations.
---

# Active Directory

Establish domain/forest, current identity and groups, reachable services, DNS, time synchronization, and authorization. Prefer scoped LDAP/PowerShell queries and existing collection before noisy enumeration.

Model each path as principal -> effective permission/control -> object/system -> resulting privilege. Examine users/groups, computers/sessions, local admins, ACL inheritance, GPO links, trusts/SID filtering, SPNs, constrained/unconstrained/resource-based delegation, Kerberos pre-auth/encryption, NTLM exposure, service accounts/gMSA, LAPS, and AD CS templates/CAs/enrollment rights.

For BloodHound edges, verify freshness, effective membership/ACL, target reachability, required authentication, and environmental prerequisites. A graph edge is a lead, not proof of exploitability. For Kerberos distinguish ticket request, issuance, use, and successful service access. For AD CS verify template flags, EKUs, enrollment permissions, CA disposition, mapping behavior, and patch/config state.

Return current identity/privilege, target, boundary, primitive, weakness, evidence, verification, exploitability, expected privilege, detection telemetry, and remediation. Avoid destructive directory changes unless explicitly authorized and necessary.
