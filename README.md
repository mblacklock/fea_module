# KB5034 LiaScript teaching materials

Student lessons and ABAQUS tutorials for **KB5034 Mechanics & Finite Element Analysis** at Northumbria University.

## Repository structure

- `weekNN/`: weekly lessons, diagrams and downloadable files.
- `abaqus/`: standalone tutorials and the [student tutorial library](abaqus/README.md).
- `common/`: shared LiaScript macros and styles.
- `docs/interactive/`: standalone HTML tools for GitHub Pages embedding.
- `course-links.js`: navigation between relative Markdown lessons in the LiaScript reader.
- [AGENTS.md](AGENTS.md): concise implementation instructions for Codex.
- [TEACHING-DESIGN.md](TEACHING-DESIGN.md): current module-wide educational principles and known review items.
- Weekly `TEACHING-NOTES.md` (where present): local teaching decisions, solution-release mechanisms and verification evidence.
- [KB5034_Redesign_Reference.md](KB5034_Redesign_Reference.md): historical rationale and planning context; its progress and open-decision lists are not a current task list.
- [abaqus/AUTHORING.md](abaqus/AUTHORING.md): tutorial sources, authoring conventions and verification notes.

The parent teaching folder contains source presentations, notes, assessment documents and original Word tutorials. Those folders are outside this Git repository and are not backed up by pushing it. `tmp/` and `output/` are ignored local working folders.

## Development workflow

ChatGPT supports educational design and review; Codex implements agreed changes and validates them; GitHub records revisions and supplies the published material.

Repository guidance is the shared project memory across PCs and chats. Carry confirmed decisions from design discussions into the appropriate documentation alongside implementation; a central cloud conversation alone does not update another development chat's context.

1. Work locally on `develop`, preserving any outstanding user edits.
2. Implement the agreed changes and preview them locally.
3. Check mathematics, units, links, diagrams and affected interactions.
4. When instructed, commit to `develop` and push it for review or backup.
5. Review the complete difference between `main` and `develop` before release. A merge includes all accumulated changes, not just the latest task.
6. Only when publication is explicitly approved, merge `develop` into `main` and push `main`.

`main` is the published branch; `develop` is work in progress. Routine edits do not require a feature branch or pull request. Use a short-lived feature branch for substantial or experimental changes when isolation is useful. Do not commit, push or merge automatically.

A development branch separates normal student links from work in progress; it does not make pushed content private. Keep restricted assessment material outside publicly accessible branches.

## Switching PCs or starting a fresh chat

1. Open this repository and inspect `git branch --show-current`, `git status --short --branch` and relevant local differences before changing anything. Preserve local work; do not automatically discard, overwrite, stash or reset it. If not on `develop`, inspect the situation before switching.
2. Run `git fetch origin`. On `develop`, review `git log --oneline HEAD..origin/develop` and `git diff HEAD...origin/develop -- AGENTS.md README.md TEACHING-DESIGN.md abaqus/AUTHORING.md` plus the affected week's notes and files. Review incoming guidance as well as implementation changes.
3. With a clean tree and a fast-forward update available, run `git pull --ff-only origin develop` before the new task. If local edits or diverging commits prevent safe synchronisation, preserve them and report the situation; agree how to reconcile it before dependent edits. Do not force an update. If remote access fails, report that the checkout's currency could not be verified.
4. Read `AGENTS.md`, the guidance relevant to the task and the current implementation. Record confirmed durable decisions in the owning document, distinguishing suggestions and unresolved questions. Do not rely on another chat's memory.
5. Before switching PCs, review completed work and its documentation. Commit and push to `develop` **when explicitly instructed**. Otherwise report what remains local; uncommitted or unpushed work will not be available through Git on the other PC.

Ignored `tmp/`/`output/` files and parent-folder source resources are not transferred by Git. Do not use them as the only copy of context needed for a handoff: record their role in tracked notes and explicitly arrange transfer or retention of needed files. Do not assume another PC has the same paths, tools, preview port or ignored backups.

For an approved release, review the complete `main`/`develop` difference and use the existing `release.sh` process from a clean, synchronised `develop` checkout. The script merges and pushes `main`; run it only with explicit publication instruction. Its suggestion to commit or stash a dirty tree is not permission for an agent to do either automatically.

## Local preview and checks

Open the whole repository folder (`LiaScript`) in VS Code, open a lesson Markdown file, and use the LiaScript Preview extension (`Alt+L`). Serving the whole folder allows links between weeks, tutorials and shared files to resolve. Preview ports are local and may vary.

Check Presentation mode for click reveals and quiz feedback, and Textbook mode where relevant. Exercise changed editable activities and charts. Inspect diagrams and verify local image and download links. Check authenticated recording access separately; a loaded embed does not establish that students can play the video.

There is currently no repository build pipeline or automated test suite. Report which checks were actually performed, including whether an ABAQUS file was executed or only inspected and checked analytically.

## Publication and review links

The LiaScript reader opens a raw Markdown URL. The branch in that URL selects the published or development version:

- [Published tutorial library (`main`)](https://liascript.github.io/course/?https://raw.githubusercontent.com/mblacklock/fea_module/main/abaqus/README.md)
- [Development tutorial library (`develop`)](https://liascript.github.io/course/?https://raw.githubusercontent.com/mblacklock/fea_module/develop/abaqus/README.md)

The development link becomes available after `develop` has been pushed. For a weekly lesson, replace `abaqus/README.md` with, for example, `week08/week08.md`. Keep student-facing eLP links on `main`.

Relative lesson links, shared imports and asset paths should stay on the selected source branch without rewriting them for each release. Retain `course-links.js` and the shared folders alongside the lessons. External community imports remain separate dependencies.
