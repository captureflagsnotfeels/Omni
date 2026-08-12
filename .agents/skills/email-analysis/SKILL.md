---
name: email-analysis
description: Investigate suspicious email, phishing, business email compromise, headers, authentication, URLs, attachments, and mail telemetry. Use for EML/MSG analysis, phishing triage, email incidents, and mail-flow investigations.
---

# Email analysis

Preserve the original message and attachment hashes. Do not click links, load remote content, or open attachments outside an appropriate analysis environment.

1. Parse envelope and header routing chronologically: Received hops, Message-ID, Return-Path, Reply-To, sender/recipient, dates/timezones, and client/IP clues. Header fields can be spoofed; evaluate trust from the receiving boundary inward.
2. Evaluate SPF, DKIM, DMARC, ARC, alignment, authentication results, and forwarding context. A pass is not proof the sender or content is benign.
3. Extract and normalize URLs/domains without visiting them; identify redirects, mismatched display text, punycode, tracking, and credential-harvest patterns.
4. Inventory attachments, MIME nesting, true types, hashes, macros/scripts, embedded objects, and archive contents using safe static methods.
5. Correlate gateway, mailbox, identity, endpoint, proxy, DNS, and sign-in telemetry to determine delivery, interaction, execution, credential use, scope, and remediation.

Return message facts, authentication interpretation, route timeline, indicators with provenance, attachment/URL findings, user and tenant scope, classification, containment, and uncertainty. Separate delivery, open, click, execution, and successful sign-in.

