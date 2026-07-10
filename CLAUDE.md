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
- Accent color `#6e56a9` is arcana purple from ArcaneAtlas (`main.py`, the
  QProgressBar chunk / splash title). It is the only accent. Don't introduce a
  second. Expressed as tints of the same hue (lighter for dots/focus/links,
  deeper for the primary-button hover), never a different color.
- Quality floor: responsive, visible focus states, `prefers-reduced-motion`
  respected. Keep it.

## Never
- No analytics, no trackers, no third-party scripts. The pitch is "no gate."
- No secrets in this repo. It's public.