---
name: network-forensics
description: Analyze packet captures and network telemetry protocol-first, reconstruct conversations and timelines, and distinguish DNS, transport, TLS, and application activity. Use for PCAP, Zeek, Suricata, and network incident evidence.
---

# PCAP analysis

Hash the capture, record capture time basis/interface/snap length, then inventory endpoints, protocols, duration, and gaps. Work protocol-first:

1. DNS: query/response, type, answers, TTL, errors, retries. Resolution alone is not contact.
2. Transport: SYN attempts, completed handshakes, resets, retransmissions, byte counts, and direction.
3. TLS: version, SNI, ALPN, certificates, fingerprints when observable; TLS establishment is not proof of a particular application action.
4. Application: HTTP methods/status/body, SMB sessions/files, Kerberos/LDAP authentication results, RDP/SSH metadata, and protocol errors.
5. Reassemble relevant streams/files only when capture completeness permits; hash extracted objects and preserve provenance.

Useful targeted commands when installed: `capinfos file.pcap`, `tshark -r file.pcap -q -z conv,tcp`, `tshark -r file.pcap -Y '<filter>' -T fields ...`, `zeek -r file.pcap`, and `suricata -r file.pcap -l <dir>`. Confirm display fields against the installed version. Return endpoints, conversations, chronological events, suspicious evidence, transferred objects, gaps, and confidence.
