### GoPhish Import Pack

Contents
- `templates/` (5 email templates)
- `landing_pages/generic_access_portal.json` (credential-capture + redirect)
- `groups/pilot_group.json` (sample users)
- `import.sh` (API importer)

UI import (quick)
1) Email templates: GoPhish > Email Templates > New Template > paste HTML from JSON `html` field; set subject; save.
2) Landing page: GoPhish > Landing Pages > New Page > paste `html`; enable Capture options; set redirect; save.
3) Group: GoPhish > Users & Groups > New Group > Import CSV or add users; or use API JSON.

API import (script)
- Start GoPhish, get API key from your user settings.
- Run:
  ```bash
  cd /workspace/gophish
  API_HOST=https://localhost:3333 API_KEY=YOUR_KEY ./import.sh
  ```

Notes
- Replace `training.example` URLs with your training host.
- Use authorized scopes only; do not phish external domains without consent.
- After import: create Sending Profile, set Landing Page URL, and launch a pilot campaign.