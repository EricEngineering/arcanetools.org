# arcanetools.org

Static landing page for the Arcane Tools suite. No build step, no framework.
Deployed by Cloudflare Pages on push to `main`.

## Rules
- `index.html` is the entire site. CSS and JS stay inline. Do not add a bundler.
- `_redirects` is a Cloudflare Pages file. Format is `/path  destination  status`.
  Always 302, never 301 — these targets change.
- Download links use GitHub's `releases/latest/download/<asset>` endpoint.
  The asset filenames are a contract with the ArcaneAtlas release workflow.
  Changing one here without changing it there breaks the download button.
- Accent color `#27ae60` is the party-token green from ArcaneAtlas. It is the
  only accent. Don't introduce a second.
- Quality floor: responsive, visible focus states, `prefers-reduced-motion`
  respected. Keep it.

## Never
- No analytics, no trackers, no third-party scripts. The pitch is "no gate."
- No secrets in this repo. It's public.