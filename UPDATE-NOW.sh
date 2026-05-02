#!/bin/bash
# Commit the redesign and push to GitHub Pages.
# Open Terminal then:  bash ~/Desktop/epic/willeswa.github.io/UPDATE-NOW.sh

set -e
cd "$(dirname "$0")"

# clean any stale locks from sandbox
find .git -name "*.lock" -exec rm -f {} \; 2>/dev/null || true

git add -A
git commit -m "redesign: signature mark, animated headline, terminal block, marquee, live Nairobi time, motion-respecting reveals" || true
git push origin main

echo ""
echo "✓ Pushed. GitHub Pages will redeploy in ~30 seconds."
echo "  → https://willeswa.github.io"
echo ""
echo "If you want to preview locally first instead:"
echo "  open ~/Desktop/epic/willeswa.github.io/index.html"
