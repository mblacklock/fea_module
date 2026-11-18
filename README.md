# KB5034 LiaScript teaching materials

Student lessons and ABAQUS tutorials for **KB5034 Mechanics & Finite Element Analysis** at Northumbria University.

## Repository structure

- `weekNN/`: weekly lessons, diagrams and downloadable files.
- `abaqus/`: standalone tutorials and the [student tutorial library](abaqus/README.md).
- `common/`: shared LiaScript macros and styles.
- `course-links.js`: navigation between relative Markdown lessons in the LiaScript reader.
- [AGENTS.md](AGENTS.md): concise implementation instructions for Codex.
- [KB5034_Redesign_Reference.md](KB5034_Redesign_Reference.md): detailed educational rationale and historical planning context.
- [abaqus/AUTHORING.md](abaqus/AUTHORING.md): tutorial sources, authoring conventions and verification notes.

The parent teaching folder contains source presentations, notes, assessment documents and original Word tutorials. Those folders are outside this Git repository and are not backed up by pushing it. `tmp/` and `output/` are ignored local working folders.

## Development workflow

ChatGPT supports educational design and review; Codex implements agreed changes and validates them; GitHub records revisions and supplies the published material.

1. Work locally on `develop`, preserving any outstanding user edits.
2. Implement the agreed changes and preview them locally.
3. Check mathematics, units, links, diagrams and affected interactions.
4. When instructed, commit to `develop` and push it for review or backup.
5. Review the complete difference between `main` and `develop` before release. A merge includes all accumulated changes, not just the latest task.
6. Only when publication is explicitly approved, merge `develop` into `main` and push `main`.

`main` is the published branch; `develop` is work in progress. Routine edits do not require a feature branch or pull request. Use a short-lived feature branch for substantial or experimental changes when isolation is useful. Do not commit, push or merge automatically.

A development branch separates normal student links from work in progress; it does not make pushed content private. Keep restricted assessment material outside publicly accessible branches.

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
