#!/usr/bin/env bash
# Copies the blank templates into context/ (git-ignored) so you can fill them in.
# Never overwrites a file you've already started.
# Usage: ./scripts/setup-context.sh [product-slug ...]
#   e.g. ./scripts/setup-context.sh product-a product-b
set -eu
cd "$(dirname "$0")/.."

copy() { # src dst
  if [ -e "$2" ]; then echo "kept     $2"; else mkdir -p "$(dirname "$2")"; cp "$1" "$2"; echo "created  $2"; fi
}

# Every template except the product file (that one is copied once per product slug)
for src in $(find templates/context -name '*.md' -not -name README.md -not -path '*/products/*'); do
  copy "$src" "context/${src#templates/context/}"
done

for slug in "$@"; do
  copy templates/context/products/_product.md "context/products/$slug.md"
done
[ $# -eq 0 ] && echo "tip: pass product slugs to create one product file each"

left=$(grep -rho '{{[^}]*}}' context 2>/dev/null | wc -l | tr -d ' ')
echo "$left placeholders still to fill in context/"
