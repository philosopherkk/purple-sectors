# AGENTS.md — Purple Sectors

Standing brief for any agent working in this repository.

## Source of truth

**Canonical source = this GitHub repo** (`philosopherkk/purple-sectors`).

Materials, schedules, tracks, and board app files live here. Accepted changes are files committed on a branch and reviewed via PR. Chat history, previews, and uncommitted editor buffers are not the project.

Live public site: https://philosopherkk.github.io/purple/  
That path is a **publish mirror** (folder copy under `philosopherkk/philosopherkk.github.io` → `purple/`), not a second source of truth.

## Git

1. New work on `feat/*` or `chore/*` only.
2. Never commit casually on `main`. Never push `main`. KK merges to `main`.
3. After accepted writes: stage those files, commit on the feature/chore branch, push, open a PR.
4. Do not force-push or amend published history.

## Publish path

1. Edit and merge in **this** repo first.
2. After `main` has the change, sync/copy app files into `philosopherkk.github.io` `purple/` via a PR there (Pages bot / Cursor). KK merges the publish PR.
3. Hard-refresh https://philosopherkk.github.io/purple/ to verify.

**Never** edit `philosopherkk.github.io` `/purple/` without also updating this repo first (or in the same change set). Mirror-only edits drift and die.

**Do not** overwrite the hub root on `philosopherkk.github.io` — only `purple/`.

Chat-only edits that are not committed do not exist.

## Ownership

- **Sector** owns YouTube [@sectorspurple](https://www.youtube.com/@sectorspurple) content.
- **This repo** owns the web board data (`index.html`, `data-*.js`, schedules, tracks, materials).

## Hard rules

- No silent “fix live” by editing only the github.io mirror.
- No DNS / Pages / domain changes unless KK asks in that turn.
- Never commit secrets, tokens, or keys.
