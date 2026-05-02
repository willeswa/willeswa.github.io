#!/bin/bash
# Run this once to push the portfolio to GitHub.
# Open Terminal, then:  bash ~/Desktop/epic/willeswa.github.io/PUSH-NOW.sh
# (or copy-paste the commands one at a time)

set -e
cd "$(dirname "$0")"

git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/willeswa/willeswa.github.io.git
git branch -M main
git push -u origin main

echo ""
echo "✓ Pushed. Now enable GitHub Pages:"
echo "  1. Open https://github.com/willeswa/willeswa.github.io/settings/pages"
echo "  2. Under 'Source', pick 'Deploy from a branch'"
echo "  3. Branch: main, folder: / (root). Save."
echo "  4. Wait 60 seconds. Visit https://willeswa.github.io"
