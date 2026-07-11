#!/usr/bin/env bash
# Preview arcanetools.org locally, exactly as Cloudflare Pages serves it
# (root-relative /resources/... paths resolve). Ctrl+C to stop.
set -euo pipefail

PORT="${1:-8000}"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
URL="http://localhost:${PORT}/"

cd "$DIR"

# Open the browser once the server is up (backgrounded; server runs in foreground).
(
  for _ in $(seq 1 50); do
    if curl -s -o /dev/null "$URL" 2>/dev/null; then break; fi
    sleep 0.1
  done
  if command -v xdg-open >/dev/null 2>&1; then xdg-open "$URL"
  elif command -v open     >/dev/null 2>&1; then open "$URL"        # macOS
  else echo "Open $URL in your browser."
  fi
) &

echo "Serving $DIR at $URL  (Ctrl+C to stop)"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
