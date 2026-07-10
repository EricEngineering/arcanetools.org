# arcanetools.org

Landing page for the Arcane Tools suite — Arcane Atlas, Arcane Eye, Arcane Audio.

Static HTML. No build step. Deployed by Cloudflare Pages on every push to `main`.

## Files

| File | What it is |
|---|---|
| `index.html` | The whole site. Inline CSS and JS on purpose — one file, one request. |
| `_redirects` | Short links. Read by Cloudflare at deploy time, served as real HTTP redirects. |

## Changing a link

Edit `_redirects`, commit, push. Live in about a minute.

The Discord invite, the Patreon URL, and the download filenames all live in that
one file. Nothing else needs to change when they do.

## Download links

`/download/*` points at GitHub's `releases/latest/download/<asset>` endpoint,
which GitHub resolves to the newest release at request time. This only works if
every release attaches assets under the **same filenames**:

```
ArcaneAtlas-Setup-windows.exe
ArcaneAtlas-macos.dmg
ArcaneAtlas-linux.tar.gz
```

The release workflow must upload a stable-named copy alongside the
version-stamped one from Inno Setup (`ArcaneAtlas-Setup-1.0.0.exe`).

## Local preview

```sh
python3 -m http.server 8000
```

Then open <http://localhost:8000>. `_redirects` won't work locally — it's a
Cloudflare feature, not a web-server one.

## Deploy

Cloudflare Pages → connected to this repo → build command: *none* →
output directory: `/`

---

GPLv3, same as the tools.
