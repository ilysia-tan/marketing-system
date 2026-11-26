#!/usr/bin/env bash
# Scans every public file for company IP before you commit or push.
# Usage: ./scripts/check-ip.sh        (exit 1 if anything is found)
set -u
cd "$(dirname "$0")/.."

DENY=private/denylist.txt
fail=0

# Public files = exactly what Git would publish: tracked + untracked-but-not-ignored.
files=$(git ls-files -co --exclude-standard | grep -v '^scripts/check-ip.sh$')

if [ -f "$DENY" ]; then
  while IFS= read -r term; do
    case "$term" in ''|\#*) continue ;; esac
    hits=$(grep -Iinw -- "$term" $files 2>/dev/null)   # whole words, any case
    if [ -n "$hits" ]; then echo "DENYLIST \"$term\":"; echo "$hits"; fail=1; fi
  done < "$DENY"
else
  echo "warning: $DENY not found, only pattern checks ran"
fi

# Patterns that usually mean real data or secrets
patterns=(
  '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}'   # email addresses
  '\+65[ -]?[0-9]{4}[ -]?[0-9]{4}'                     # Singapore phone numbers
  '(sk|pk|api|key|token)[_-]?[A-Za-z0-9]{16,}'         # API keys / tokens
  'S\$ ?[0-9]|SGD ?[0-9]'                               # Singapore dollar figures
)
for p in "${patterns[@]}"; do
  hits=$(grep -IEin -- "$p" $files 2>/dev/null | grep -v 'example\.com')
  if [ -n "$hits" ]; then echo "PATTERN $p:"; echo "$hits"; fail=1; fi
done

if [ $fail -eq 0 ]; then echo "clean: no company IP found in public files"; fi
exit $fail
