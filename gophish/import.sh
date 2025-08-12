#!/usr/bin/env bash
set -euo pipefail

# Import GoPhish content: templates, landing page, and group
# Usage: API_HOST=https://localhost:3333 API_KEY=your_api_key ./import.sh

API_HOST="${API_HOST:-https://localhost:3333}"
API_KEY="${API_KEY:-REPLACE_WITH_API_KEY}"
API_BASE="$API_HOST/api"

if [[ "$API_KEY" == "REPLACE_WITH_API_KEY" ]]; then
  echo "Set API_KEY env var (copy from GoPhish User Settings)." >&2
  exit 1
fi

echo "Importing email templates..."
for file in /workspace/gophish/templates/*.json; do
  [[ -e "$file" ]] || { echo "No templates found"; break; }
  name=$(jq -r .name "$file" || echo "$file")
  curl -sk \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -X POST "$API_BASE/templates" \
    --data-binary @"$file" | jq -r '.name // .message // .' || true
  echo " - $name"
done

echo "Importing landing page..."
LP_FILE="/workspace/gophish/landing_pages/generic_access_portal.json"
if [[ -f "$LP_FILE" ]]; then
  curl -sk \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -X POST "$API_BASE/landing_pages" \
    --data-binary @"$LP_FILE" | jq -r '.name // .message // .'
fi

echo "Importing group..."
GR_FILE="/workspace/gophish/groups/pilot_group.json"
if [[ -f "$GR_FILE" ]]; then
  curl -sk \
    -H "Authorization: Bearer $API_KEY" \
    -H "Content-Type: application/json" \
    -X POST "$API_BASE/groups" \
    --data-binary @"$GR_FILE" | jq -r '.name // .message // .'
fi

echo "Done."