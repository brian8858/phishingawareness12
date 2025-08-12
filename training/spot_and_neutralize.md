## Spot and Neutralize a Phishing Attack

### For everyone — spotting quickly
- Sender sanity check: display name vs domain; beware lookalikes and misspellings.
- Link hygiene: hover to preview; avoid shortened links; mismatched domains are a red flag.
- QR codes in email: treat as obfuscated links; do not scan from personal devices.
- Urgency/pressure: “act now,” payment/gift cards, confidential requests → verify independently.
- Attachments: unexpected .html/.htm/.iso/.img/.zip/.lnk; macro prompts; treat as suspicious.
- Consent prompts: OAuth screens asking broad permissions (send mail, offline access) → deny and report.
- MFA/SSO notices: verify via your normal portal/bookmark; don’t trust emailed prompts.
- Voice/SMS callbacks: independently look up the number; do not use numbers in the message.

### If you suspect a phish — user action plan
- Don’t interact: do not click, scan, reply, or download. Use the “Report Phish” button or forward to security with full headers.
- If you clicked (no data entered): close the tab/app, disconnect VPN/Wi‑Fi if the page behaved oddly, and report immediately.
- If you entered credentials: change your password via the official portal; enable/confirm MFA; notify IT/Sec immediately.
- If you approved an app: revoke third‑party access (M365/Google security page) and inform IT/Sec.
- If you opened an attachment and it seemed suspicious: disconnect from network; keep device on; contact IT/Sec for EDR triage.

### IT/Sec — neutralization playbook
1) Validate and triage
- Preserve the original message; review headers (SPF/DKIM/DMARC), URLs, and attachments in a sandbox.
- Extract IOCs: sender, return‑path, message‑ID, URLs/domains/IPs, hashes.

2) Contain
- Mail: retroactive search and purge (e.g., M365 Defender, Google Admin); quarantine similar variants.
- Block: sender/domain in SEG/EOP; URLs/domains in SWG/DNS/EDR/firewall.
- Accounts: force password reset; revoke sessions/refresh tokens; invalidate app passwords; revoke OAuth grants.
- Endpoints: isolate hosts with signs of execution; push EDR detections and IOC blocklists.

3) Eradicate and recover
- Remove malicious inbox rules/forwarding; clear unauthorized mailbox delegates.
- Full EDR scans; remove persistence; re‑enable MFA; rotate credentials for impacted apps.
- Monitor for reuse of IOCs and follow‑on BEC attempts.

4) Notify and educate
- Send an org advisory with screenshots, indicators, and how to report.
- Targeted coaching for users who interacted; immediate “teachable moment” page in future campaigns.

5) Improve controls (lessons learned)
- Email auth: enforce SPF/DKIM; DMARC p=quarantine/reject; external sender tagging.
- App consent: require admin consent; verified publishers only; restrict high‑risk scopes.
- Identity: disable legacy auth; conditional access; geo/device risk blocks.
- Mail hygiene: block auto‑forward to external; alert on new inbox rules/forwarding/delegations.
- Web/endpoint: URL rewriting/detonation; sandbox attachments; DNS filtering; EDR coverage on all endpoints.
- Domain defenses: monitor/register lookalikes; takedown when feasible.

### Quick checklists
- User: pause → hover → verify via bookmarks → report → never scan QR from email.
- Responder: purge → block → reset/revoke → scan/isolate → notify → harden.

Contacts (customize)
- Security mailbox: security@example.com
- Incident hotline: +1 (000) 000‑0000
- Report button: Mail client “Report Phish” add‑in