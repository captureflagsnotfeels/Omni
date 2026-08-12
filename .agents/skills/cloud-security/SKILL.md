---
name: cloud-security
description: Assess and investigate cloud, container, Kubernetes, serverless, CI/CD, and infrastructure-as-code security. Use for cloud IAM and control-plane analysis, exposure review, container/platform attack paths, cloud incidents, and hardening.
---

# Cloud and platform security

Establish provider, accounts/subscriptions/projects, regions, identity, authorization, production sensitivity, and available control-plane/data-plane telemetry. Never assume similarly named services share semantics across providers.

1. Identity: effective roles/policies, resource policies, federation, service/workload identities, keys/tokens, privilege boundaries, escalation paths, and organization controls. Evaluate explicit denies, conditions, and session context.
2. Exposure: public endpoints/storage, security groups/firewalls, load balancers, private networking, metadata services, DNS, secrets, encryption, snapshots, and cross-account access.
3. Compute: VM images/agents, serverless permissions/events, container images/runtime, registries, Kubernetes RBAC, admission, service accounts, secrets, network policies, privileged workloads, host mounts, and escape-relevant configuration.
4. Delivery: repositories, CI identities, runners, artifacts, IaC state, deployment approvals, provenance, and untrusted pull-request inputs.
5. Investigation: correlate audit/control-plane logs, identity events, network flow, workload/runtime, storage access, and configuration history. API call presence is not proof the requested operation succeeded; inspect result/error fields.

Prefer read-only provider-native queries and scoped resource graphs. Verify effective permissions before claiming a path. Return scope, identity, resource/boundary, evidence, exploitability or incident interpretation, telemetry gaps, remediation/detection, and uncertainty.

