#!/bin/zsh
set -e

APP_DIR="/Users/sutingting/Documents/Codex/2026-06-08/to-do-list"
HEALTH_URL="http://127.0.0.1:8765/index.html"
URL="${HEALTH_URL}?v=$(date +%Y%m%d%H%M%S)"
LOG_FILE="/tmp/daily-trace-server.log"

cd "$APP_DIR"

if ! curl -fsS "$HEALTH_URL" >/dev/null 2>&1; then
  nohup python3 -m http.server 8765 > "$LOG_FILE" 2>&1 &
  sleep 1
fi

open "$URL"
