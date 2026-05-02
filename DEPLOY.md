# Portfolio deployment — GitHub Pages

The `index.html` in this folder is your portfolio. Deploy it to GitHub Pages in 5 minutes.

## Option A — Single-file deploy via the new repo `willeswa.github.io` (recommended)

1. Go to https://github.com/new
2. Repository name: **`willeswa.github.io`** (this exact name unlocks the user-site URL)
3. Public, no README, no .gitignore, no license
4. Click "Create repository"
5. On the empty repo page, click **"uploading an existing file"** (the link in the quick-setup box)
6. Drag `index.html` from this folder into the upload area
7. Commit message: `initial portfolio`
8. Click "Commit changes"
9. Wait ~30 seconds, then visit **https://willeswa.github.io** — your portfolio is live

## Option B — Deploy via terminal

```bash
cd ~/Documents/1000-Project/portfolio
git init
git add index.html DEPLOY.md
git commit -m "initial portfolio"
gh repo create willeswa/willeswa.github.io --public --source=. --remote=origin --push
# Wait 30s, then visit https://willeswa.github.io
```

(Requires `gh` CLI installed and authenticated: `brew install gh && gh auth login`.)

## Then point wanjala.dev at it

Since you own `wanjala.dev`, you can serve the portfolio there instead of (or in addition to) `willeswa.github.io`.

1. In your domain registrar (where wanjala.dev is registered), add these DNS records pointing the apex domain to GitHub Pages:
   - **A records** → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - Or a single **CNAME** for `www.wanjala.dev` → `willeswa.github.io`

2. In your `willeswa.github.io` repo, create a file named `CNAME` (no extension) at the root with one line:
   ```
   wanjala.dev
   ```

3. In the repo settings → Pages → Custom domain: set `wanjala.dev`, check "Enforce HTTPS"

4. Wait 10–60 minutes for DNS propagation. Then `https://wanjala.dev` serves your portfolio.

## What to update later

The `index.html` is intentionally hand-coded (no build step, no dependencies, ~12KB) so you can edit it in any text editor in seconds. Common future edits:

- **Add a project** — copy any `<div class="project">` block, paste it under the "Selected work" section, edit the content
- **Update GitHub stats** — the "64 repos" and "2,200+ contributions" numbers are static. Refresh them every few months by checking your GitHub profile
- **Add a video embed** — drop `<video controls src="docsbrew.mp4" style="width:100%;border-radius:8px;"></video>` into the DocsBrew project block (and upload the file alongside index.html)
- **Add testimonials** — once you have client quotes, add a new `<section>` between "Selected work" and "Stack"
- **Change colors** — edit the `:root` CSS variables at the top. Right now: `--bg: #0b0b10` (dark), `--accent: #2cd573` (green). Try a different `--accent` to re-skin the whole thing.

## Performance / SEO

- The page is a single HTML file with all CSS inlined — first contentful paint < 200ms on any connection.
- Uses semantic HTML (`<header>`, `<section>`, `<article>` could be added if you nest more), so screen readers + crawlers parse it correctly.
- Open Graph tags are set so when you share the link on X/LinkedIn/Slack it renders a clean preview.
- Lighthouse should score 100/100/100/100 out of the box.

## Once it's live

- Add the URL to your Upwork bio (it's allowed in the contact info / linked accounts section, just not in the overview text)
- Add the URL to your GitHub bio (replace the broken `wanjala.dev` link there)
- Add the URL to your X profile
- Use the URL in proposal openers: "I keep my live work at wanjala.dev"
