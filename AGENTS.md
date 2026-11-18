# Codex instructions for KB5034

## Scope and context

- Implement changes agreed with the module leader. Preserve the educational design, learning outcomes and module structure unless a change is explicitly requested.
- Prefer targeted edits. Retain working LiaScript features and avoid unrelated rewriting or new complexity.
- Read `KB5034_Redesign_Reference.md` for detailed educational context and `abaqus/AUTHORING.md` when editing tutorials. Some statements are historical; flag conflicts with current instructions or lessons rather than silently resolving educational decisions.
- Re-read affected files before editing because the module leader may be editing concurrently.

## Development and publication

- This folder is the Git repository root. Inspect the current branch, working-tree status and relevant differences before changing files. Preserve existing user work; do not reset, discard or overwrite it.
- Routine work belongs on `develop`. `main` holds published student-facing material. If the checkout is on another branch, inspect the situation before switching and preserve outstanding changes.
- Use a short-lived feature branch only for substantial or experimental work that benefits from isolation.
- Do not commit, push or merge without explicit instruction. Treat merging into `main` as a publication decision. Before a release, review the complete difference between `main` and `develop`, including previously accumulated work.
- A pushed development branch is not private storage. Keep restricted assessment material out of publicly accessible branches.

## Authoring conventions

- Keep weeks self-contained: `weekNN/weekNN.md`, `images/` and local download folders. Preserve descriptive asset names and existing numbering conventions.
- Keep ABAQUS tutorials canonical under `abaqus/`; link to them from lessons instead of duplicating their content. Preserve source tutorial wording and sequence unless corrections or changes are authorised.
- Reuse `common/templates.md`, `common/styles.css` and the `course` navigation macro. Use relative paths; do not hardcode local preview addresses or this repository's branch into lesson dependencies.
- Follow nearby lessons for metadata, section structure, numbered click reveals, native quizzes and solution dropdowns. `{{0}}` is initially visible, not a hiding mechanism.
- Prefer SVG for technical diagrams. Put explanatory prose in the lesson rather than inside diagrams. Preserve mathematical notation, sign conventions and unit consistency across text, diagrams and input files.
- Keep scratch scripts, render output and temporary copies under ignored `tmp/` or `output/`. Do not publish source assessment answer keys.

## Validation and reporting

- Check changed mathematics, substitutions, units, notation and consistency between analytical explanations and FEA examples.
- Check local links, images, downloads and shared dependencies. Preview from the whole repository root so cross-lesson navigation works.
- Exercise affected reveals, quizzes, editable activities and charts in the LiaScript renderer where possible; inspect changed diagrams visually.
- Distinguish analytical expectations, input-file inspection and actual ABAQUS execution. Do not claim authenticated video playback or student access was verified from the presence of an embed alone.
- Report what changed, checks performed and outstanding issues or unverified behaviour. Keep implementation details proportional to the task.
