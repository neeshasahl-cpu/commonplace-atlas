# Commonplace Atlas

A personal map of knowledge: about 1,800 topics across 15 domains (sciences, AI and AI governance, climate and sustainable finance, every country, the arts, the zeitgeist and more), with a private commonplace book threaded through it.

## What it does

- **Atlas**: browse or search domains → subjects → topics, explore a clickable wheel map of everything, and mark each topic Curious, Learning or Learned.
- **Contribute**: type or paste anything and get topic suggestions as you type, or ask Claude where it fits, then file it as a note or a clipping in one click.
- **Journal**: every learning, thought and question you've written, newest first.
- **Clippings**: saved links and passages, filed under topics.
- Add your own sub-topics anywhere in the tree.

## Where it runs

The app is a single file, `commonplace-atlas.html`, published as a Claude artifact. Notes, clippings, progress and custom topics are stored in the artifact's private database on claude.ai (readable only by the owner), and "Ask Claude" uses the artifact's Claude capability. None of that personal data is stored in this repository.

Opened outside claude.ai, the page still lets you browse the whole atlas, but saving notes and asking Claude are switched off.

## Editing the topics

All topics live in the `DOMAINS` array near the top of the script in `commonplace-atlas.html`. Each subject is `["Subject name", "Topic one|Topic two|..."]`. Topic links are derived from names, so renaming a topic detaches notes already filed under it; adding new topics is always safe.
