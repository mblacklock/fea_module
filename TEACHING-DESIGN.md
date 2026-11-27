# KB5034 teaching design

Confirmed module-wide principles, consolidated on 27 November 2026 from the module leader's instructions and existing authoring notes. This is current design guidance; it does not claim every lesson has already been converted to it. Week-specific decisions and exceptions belong in that week's `TEACHING-NOTES.md`.

## Preparation and live teaching

- Pre-class recordings introduce mathematical theory and derivations. Retrieval questions check conceptual understanding using plausible distractors and explanatory feedback. Full hand-calculation execution belongs in problem-solving activities rather than derivation-recall quizzes.
- Lectorials prioritise student-led problem solving, engineering interpretation and modelling decisions. Let students attempt, compare and explain before showing references. Avoid unnecessarily repeating pre-class derivations.
- Keep student-facing LiaScript concise: prompts, essential equations, diagrams and checks, leaving room for live calculations, sketches and explanations in OneNote rather than turning the lesson into a textbook.
- Derivations provide exposure and physical meaning rather than routine reproduction training. Purposeful live development remains appropriate: Week 9's Tresca criterion and Week 10's short rectangle-Jacobian calculation are documented examples. Do not infer a ban on these activities or rewrite fixed learning outcomes.
- Use flexible activities and timing appropriate to each topic. Week 1 has no advance preparation; later weeks distinguish preparation from in-class work. The historical redesign schedule is not a mandatory session template.

## Solutions and teaching reveals

Normally hide detailed unassessed worked solutions for the initial class release and make them available subsequently. Preserve numerical checkers, retrieval feedback and independent teaching reveals where they support the class activity. A teaching reveal must not inadvertently sit inside a post-class solution wrapper.

Use the week's existing mechanism rather than adding a global switch. Week 8 uses `post-class-solution` HTML wrappers; Week 9 uses `@Week09Solution` with `@SolutionsHidden`/`@SolutionsVisible`. Week 10's developed in-class version used the corresponding local macro, but its current tracked lesson is pre-class only. Consult weekly notes for locations and release status. Do not change an active visibility setting as an incidental edit.

CSS/HTML hiding and collapsed dropdowns are presentation controls, not access control: raw source remains readable. Do not place restricted assessed-problem solutions or answer keys in public source, including `develop`. Keep formative examples distinct from assessed problems and preserve original teaching resources.

## Interactive activities and delivery

An interactive tool needs a clear learning purpose and a meaningful student activity: predict, change a relevant variable, compare results and explain the engineering implication. Prefer observable physical or numerical consequences over extra algebra or controls without a teaching purpose. Week 10's geometry-to-Jacobian-to-quadrature investigation is a specific example, not a required interface for every tool.

Standalone HTML tools live under `docs/interactive/` and use the established GitHub Pages/iframe approach. Week 9 embeds `https://mblacklock.github.io/fea_module/interactive/mohrs_circle_interactive.html`; the Jacobian tool uses the corresponding `jacobian_interactive.html` path in its developed lesson. Pages hosting has a separate URL from the branch-selecting raw Markdown reader: previewing `develop` does not establish that matching HTML is publicly deployed. Do not claim hosting is current without checking it. For local checks, use an ignored preview copy with a local iframe URL; keep temporary localhost addresses out of student lessons. Publication follows [README.md](README.md).

Deliver ABAQUS tutorials as canonical standalone LiaScript lessons under `abaqus/`, following [AUTHORING.md](abaqus/AUTHORING.md), rather than merely linking original PDFs. Preserve source resources. Week 10 currently retains four original PDFs as an explicitly recorded exception from its pre-class task; conversion requires separately scoped work, not automatic changes during documentation maintenance.

## Consistency and decision boundaries

Keep mathematical notation, sign conventions, terminology and units consistent across weeks, diagrams, input files and analytical comparisons. Consult weekly notes before reusing examples: Week 9 records stress/angle conventions and Week 10 its Jacobian row convention. Flag conflicting sources rather than silently changing an established convention.

[AGENTS.md](AGENTS.md) owns mandatory implementation instructions; [README.md](README.md) owns workflow; weekly notes own local teaching rationale and verification evidence. [KB5034_Redesign_Reference.md](KB5034_Redesign_Reference.md) preserves the longer historical rationale, proposed assessment arrangements and open planning questions. Do not promote historical proposals or progress claims into current policy without confirmation.

## Known matters requiring review

- Week 10's original symmetry tutorial disagrees on plate/quarter-model dimensions. Its notes request author confirmation before student release; this review does not choose the geometry.
- Week 10's current lesson is pre-class only. Its in-class snapshot is ignored local material, not recoverable from a fresh clone; see its notes before resuming work on another PC.
- Week 10's current working lesson omits the material-unit correction still described in its notes. Confirm the intended student-facing correction separately; this documentation task leaves the lesson untouched.
- Week 1's delivery notes retain older input-file provenance and run claims. For the current shared `abaqus/General/IntroToABAQUS/files/intro.inp`, use file-specific evidence in [AUTHORING.md](abaqus/AUTHORING.md); do not transfer a recorded run of another file to it.
