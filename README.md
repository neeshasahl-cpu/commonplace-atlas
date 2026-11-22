# Commonplace Atlas

A personal map of knowledge: nearly 1,500 topics across 15 domains (sciences, AI and AI governance, climate and sustainable finance, every country, the arts, the zeitgeist and more), with a private commonplace book threaded through it.

**Open the app:** https://neeshasahl-cpu.github.io/commonplace-atlas/

## What it does

- **Atlas**: browse or search domains → subjects → topics, explore a clickable wheel map of everything, and mark each topic Curious, Learning or Learned.
- **Contribute**: type or paste anything and get topic suggestions as you type, then file it as a note or a clipping in one click.
- **Journal**: every learning, thought and question you've written, newest first.
- **Clippings**: saved links and passages, filed under topics.
- Add your own sub-topics anywhere in the tree.

## Install it like an app

- **Phone (iPhone, Safari):** open the link, tap Share, then **Add to Home Screen**.
- **Phone (Android, Chrome):** open the link, tap the ⋮ menu, then **Install app** or **Add to Home screen**.
- **Computer (Chrome or Edge):** open the link and click the install icon at the right end of the address bar.

It opens in its own window and works offline after the first visit.

## Where your notes are saved

On the web app, notes, clippings, progress and custom topics are saved **in that browser on that device**. They are never uploaded and are not in this repository. Use **Download backup** on the Journal page to keep a copy or move your notes to another device, and **Restore a backup** to load one. Clearing your browser's site data erases notes that haven't been backed up.

The same file also runs as a Claude artifact on claude.ai, where notes are stored in the artifact's private database and an extra "Ask Claude where it fits" button is available. The two keep separate notes.

## Files

- `commonplace-atlas.html`: the app source (also the Claude artifact).
- `index.html`: the web app page, generated from the source by `sh build.sh`. Rebuild it after any change to the source.
- `manifest.webmanifest`, `sw.js`, `icon*.{svg,png}`: what makes it installable and work offline.

## Editing the topics

All topics live in the `DOMAINS` array near the top of the script in `commonplace-atlas.html`. Each subject is `["Subject name", "Topic one|Topic two|..."]`. Topic links are derived from names, so renaming a topic detaches notes already filed under it; adding new topics is always safe. Run `sh build.sh` afterwards.
