---
name: mobile-security
description: Assess authorized Android and iOS applications, packages, storage, IPC, deep links, authentication, network behavior, platform permissions, and backend trust. Use for mobile application security reviews and mobile incident artifacts.
---

# Mobile security

Record app version/build, platform/OS, signing identity, device state, test account, backend environment, and authorization. Separate client weaknesses from server-side impact.

Review package metadata, exported components/URL schemes, permissions/entitlements, local storage/keychain/keystore use, logs/backups/screenshots, WebViews, IPC, deep links, certificate handling, update/signing, native libraries, obfuscation, and root/jailbreak assumptions. Trace authentication, token lifecycle, authorization, sensitive data, and API trust boundaries. A client-side check is not a security boundary unless the server enforces it.

Use static analysis first; perform dynamic instrumentation only on authorized devices/apps with recorded changes. Validate findings against actual platform behavior and backend enforcement. Return component/path, evidence, preconditions, boundary, impact, safe reproduction, remediation, regression validation, and uncertainty.

