# Analyze attack paths

Automatically select `offensive_security` and any relevant `identity_security`, web-security-assessment, or `privilege-boundary-analysis` skill. For every candidate document: current identity, current privilege, target, security boundary, required permission/primitive, weakness, evidence, verification method, exploitability/prerequisites, side effects, and expected resulting privilege.

Rank paths by: verified evidence, reliability, low complexity, then shortest path. Reject paths with contradicted prerequisites; label untested paths as hypotheses. Use `security_assurance` for complex or consequential chains. Return the best supported path, alternatives, exact next verification action, and uncertainties.
