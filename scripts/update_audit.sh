#!/usr/bin/env bash
# Regenerates the auto-audit table in README.md between the AUTO-AUDIT markers.
# Requires: gh CLI authenticated via GH_TOKEN with `repo` scope (to see private repos
# owned by the account), jq. Does NOT rewrite the hand-written analysis sections —
# only the mechanical stats table and the "Last automated scan" line.
set -euo pipefail

OWNER="${1:-knightingale408}"
README="README.md"
TODAY="$(date -u +'%Y-%m-%d')"

repos_json=$(gh repo list "$OWNER" --limit 200 --json name,isPrivate,primaryLanguage,pushedAt,isArchived,isFork)

table="| Repo | Visibility | Language | Last pushed | Commits |\n|---|---|---|---|---|\n"
for row in $(echo "$repos_json" | jq -c '.[]'); do
  name=$(echo "$row" | jq -r '.name')
  private=$(echo "$row" | jq -r 'if .isPrivate then "private" else "public" end')
  lang=$(echo "$row" | jq -r '.primaryLanguage.name // "—"')
  pushed=$(echo "$row" | jq -r '.pushedAt | split("T")[0]')
  commits=$(gh api "repos/$OWNER/$name/commits" --jq 'length' 2>/dev/null || echo "?")
  table="${table}| \`$name\` | $private | $lang | $pushed | $commits |\n"
done

start_marker="<!-- AUTO-AUDIT:START -->"
end_marker="<!-- AUTO-AUDIT:END -->"
block="${start_marker}\n_Last automated scan: ${TODAY} (UTC)_\n\n$(printf '%b' "$table")\n${end_marker}"

awk -v block="$block" '
  BEGIN { skip=0 }
  /<!-- AUTO-AUDIT:START -->/ { print block; skip=1; next }
  /<!-- AUTO-AUDIT:END -->/ { skip=0; next }
  skip==0 { print }
' "$README" > "${README}.tmp" && mv "${README}.tmp" "$README"
