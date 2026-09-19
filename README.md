# Purple Sectors

Weekly board for Purple Sectors (schedules, tracks, series, dossiers).

**Live (public):** https://philosopherkk.github.io/purple/

That URL is a **folder copy** inside [`philosopherkk/philosopherkk.github.io`](https://github.com/philosopherkk/philosopherkk.github.io) (`purple/`). It is **not** this repo’s GitHub Pages URL unless Pages is enabled separately on this repo.

## Source of truth

**This repo** (`philosopherkk/purple-sectors`) is the **canonical** store for materials, schedules, tracks, and the board app files (`index.html`, `data-*.js`, etc.).

[`philosopherkk.github.io` `/purple/`](https://philosopherkk.github.io/purple/) is the **publish mirror** only. Chat-only edits that are not committed here do not exist.

## Edit and deploy

Same habit as eyesinfo (branch → PR → publish), adapted for GitHub Pages instead of Vercel:

1. New work on `feat/*` or `chore/*` — never commit on `main` casually.
2. Edit files **in this repo**; commit; push the branch; open a PR.
3. On every content publish also: update [`CHANGELOG.md`](CHANGELOG.md) from **that commit’s SHA**, and bump [`VERSION`](VERSION) + `CONTENT_VERSION` / `CONTENT_UPDATED` in `data-app.js` (HKT date). The board footer shows the stamp and links to History.
4. After merge to `main`, sync/copy the app files into `philosopherkk.github.io` `purple/` via a PR there (Pages bot / Cursor). KK merges that publish PR.
5. Hard-refresh https://philosopherkk.github.io/purple/ and confirm the History strip.
6. Chat-only edits that are not committed do not exist.

Do not overwrite the hub root on `philosopherkk.github.io` — only the `purple/` folder is this app’s publish target.

### Where to edit (this repo)

| What | File |
|---|---|
| Board UI shell | `index.html` |
| App helpers / YouTube embeds / version stamp | `data-app.js` |
| Series / week schedules / cars | `data-series.js` |
| Track dossiers / map coords | `data-tracks.js` |
| Edit/upload history | `CHANGELOG.md` |
| Version label (agents bump on publish) | `VERSION` |

## History / version

- On-page strip: `Purple · Season 4 · v… · updated YYYY-MM-DD HKT · History`
- Full log: [CHANGELOG.md](https://github.com/philosopherkk/purple-sectors/blob/main/CHANGELOG.md) (git-sourced; commit SHAs from `main`, not chat)

## Optional: Pages from this repo

Settings → Pages → Deploy from a branch → `main` / root would also serve https://philosopherkk.github.io/purple-sectors/ (separate from the live hub path above). The public weekly board URL remains https://philosopherkk.github.io/purple/.

## Ownership

- **Sector** owns YouTube [@sectorspurple](https://www.youtube.com/@sectorspurple) content.
- **This repo** owns the web board data and app source.
