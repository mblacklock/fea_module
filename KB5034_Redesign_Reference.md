# KB5034 Redesign — Reference Document

This document captures the reasoning behind the KB5034 module redesign, not just the final decisions. It's meant to be handed to a coding assistant (or read by a future you) so that content built later stays consistent with the *why*, not just the *what*.

---

## 1. Context and fixed constraints

- **Module**: KB5034 Mechanics & Finite Element Analysis, Level 5, Northumbria University
- **Cohort**: ~60 students, 2 academic staff, no GTA
- **Room**: flat classroom, 60 collab-desk seats, 36 PCs (not enough for 1:1)
- **Semester**: 12 weeks, weeks 1-5 and 7-11 taught (10 teaching weeks), week 6 reading week, week 12 revision (previously also held "3D overview + exam prep" content — this needs to move elsewhere since week 12 must become pure revision going forward)
- **Assessment weighting**: Coursework 30% (MLO1+2), Exam 70% (MLO2+3) — **this MLO-to-assessment mapping is fixed and not open for reconsideration** (validated in the module spec; changing it would require a ~18-month revalidation process)
- **Everything else is open**: delivery method, session structure, schedule, quiz format, rubrics, content depth

## 2. The core problem this redesign responds to

Coursework performance (75% average) doesn't reliably predict exam performance (46% average), and the gap is worst exactly where it matters most:
- Quizzes 80% vs exam Q1-15 equivalent 57.5%
- ABAQUS coursework 70% vs exam modelling (Q16+Q17m) 44.2%
- Correlation between ABAQUS coursework and exam modelling: only **0.28** (weak)
- Q17's hand calculation (equation given, one unknown): only 20% average, but this was mostly **non-attempts** (42% left it blank), and among those who *did* attempt it, average was still only 34% — a real execution problem, not just a positional one
- 38% of students who did substantial work on Q17's modelling section still left the hand calc entirely blank — strong evidence of a **positional effect** (it's the last thing on the paper), not pure inability

**Root causes identified, in rough order of how directly they were evidenced:**
1. The last-30-minutes optional ABAQUS help slot is almost universally skipped (4-5 students out of ~36 who attend stay), even by students who attended the first 2 hours
2. Coursework's marking scheme (numeric answer only, unlimited attempts, answer revealed after each try) doesn't distinguish "understood it" from "got there eventually" — and for simple truss/beam problems, the FE-converged answer equals the closed-form analytical answer, so it can be solved without ever touching ABAQUS properly
3. **Generative AI can solve any of these unsupervised, take-home deliverables to a decent standard** — numeric answers, written justifications, even full modelling reports — regardless of question format, randomisation, or how the question is framed. This was tested directly in-conversation (a plane-stress-style beam deflection problem was solved correctly from the image alone in under a minute, with no ABAQUS use).
4. The analytical/hand-calc skill has almost no formative practice anywhere in the current design — it's taught (SFD/BMD, deflection derivations) but essentially untested until the exam

## 3. The central unresolved tension: AI and unsupervised coursework

This was tested exhaustively and is worth stating plainly rather than re-litigating:

- **No format change fixes it.** Randomised variables, calculated-answer questions, written justifications, bigger integrated project reports — all are exactly as solvable by AI as the current format. Bigger/more integrated submissions are *more* exploitable, not less, since reports are closer to AI's core strength than short numeric substitution.
- **Live supervision is the only thing that actually works** (oral defence, live checkpoint with real marks attached) — but this was ruled out:
  - Not enough staff time for viva-style defence at this cohort size
  - A **graded** live checkpoint reopens a genuine institutional policy conflict: the university prefers single-deadline coursework, and soft week-long online deadlines currently violate that quietly (extensions are rarely triggered, so nobody notices). A graded live checkpoint would trigger real, frequent extension requests (illness, etc.) for a live, unmissable, recurring event — a much more visible and harder-to-defend violation than what currently exists.
  - The person explicitly does not want informal "show me later" arrangements either, due to fairness/bias concerns (self-certification precedent) — any fallback must route through the university's actual extensions/mitigating-circumstances process, not module-level discretion
- **Conclusion, accepted deliberately, not happily**: the ABAQUS and analytical coursework problems remain unsupervised, auto-marked, and **cannot be made AI-proof**. This is treated as an accepted risk, not a solved problem. The real weight for "can this student actually do it alone" sits with the **exam** and the **live in-session judgement/checkpoint work**, the only genuinely supervised components in the module.
- A **live in-session checkpoint** still exists, but is deliberately **ungraded** — a completion/support check, not an assessment — specifically to avoid the single-deadline/extensions problem. It exists to catch disengagement (not doing the work at all), not to catch AI use (which it structurally cannot do).

## 4. Assessment redesign (30% coursework)

Split into three equal components, each auto-marked, each with its own weekly cadence:

- **Quiz — 10%, weekly (~10 quizzes)**
  - Purpose: comprehension check on flipped online material, *and* an engagement incentive (previously ~10% of students did an ungraded version voluntarily; making it graded raised this to ~90% — graded weekly cadence is deliberately kept for this reason)
  - Content: conceptual understanding (e.g. "if E doubles, what happens to u?" — tests relationship understanding via trivial arithmetic, not real calculation), ABAQUS procedural/software mechanics questions, plus a few *quick* numeric reasoning checks
  - **Explicitly NOT**: derivation-recall (matrix transpose, partial derivatives of shape functions, Gaussian quadrature order-of-exactness proofs) — this content was tested previously but never mapped to anything actually assessed downstream, and is being cut
  - Marks per quiz: kept at ~10 (not reduced to 5) — question count doesn't need to drop, since the simplified conceptual content is already fast (~10 min), so reducing questions wouldn't meaningfully reduce workload, only coverage

- **Analytical — 10%, per topic-block (5 across semester)**
  - Full hand-calc execution on its own problem (randomised variables), matching Q17a's format/difficulty directly
  - **Deliberately a separate problem from the ABAQUS one for the same topic** — not the same structure solved two ways — because for simple truss/beam geometries, the FE-converged answer and the closed-form analytical answer are mathematically identical, so asking for "the same number" via two routes just lets one calculation satisfy both marks
  - This is the component most directly targeting the Q17a gap (currently zero formative practice exists for this skill anywhere)

- **ABAQUS — 10%, per topic-block (5 across semester)**
  - FE numeric answer (as now, unlimited attempts, auto-marked)
  - Plus a **File Response submission of the input file**, bulk-downloadable via Blackboard's "Download Assessment Files" feature (ZIP of all submissions), checked after the deadline by a small script for element type / element count / section properties consistency — catches "submitted a plausible number with no matching model," doesn't require human marking
  - Workings/hand-calc-adjacent submissions: spot-checked only (manual, bounded effort, deterrent value rather than universal marking)
  - Note: with unlimited attempts allowed, bulk-downloaded ZIPs will include every attempt's files, not just the final one — any checking script needs to select the latest attempt per student

- **Rubrics**: already banded/holistic (not itemised checklists) — this was already true, not a new change. What's still open: reworking the *bands themselves* so genuine depth of understanding (e.g. referencing element formulation meaningfully) can differentiate a 2:1 from a 1st, rather than being flattened by a same-tick-either-way checklist.

- **Exam**: Q17's hand calculation moves to *before* the modelling section (currently last on the paper) to address the strong positional non-attempt effect found in the data.

## 5. Session structure (per topic-block, matches a genuine 2.5hr session)

Applies once the block has moved past Week 1 (which is a one-off orientation session with no prior week to give feedback on):

1. **Feedback** (~10-15 min): on previous week's quiz, analytical problem, and ABAQUS problem
2. **Exam practice** (~40-45 min, whole room): "how would you model this?" judgement problems (previously called LO 2.7-style content) — this is the one part of the whole module most directly rehearsing Q16/Q17's actual demands, and previously got squeezed into a few end-of-topic slides; now gets real, dedicated time
3. **Break** (~10 min)
4. **Split practice** (~80-85 min): class splits by seating (left/right of room; PCs are in the middle) — one half starts the ABAQUS problem at the PCs, other half works the analytical problem at desks; staff specialise per activity rather than covering both for the whole room; **checkpoint** (ungraded, "show me your progress") before each half stops; then **swap**, repeat checkpoint
   - Note: splitting does NOT reduce total time-on-task per student — each student still gets the same total minutes on each activity, just in a different order relative to their neighbour, while solving the 36-PC capacity problem

Each analytical/ABAQUS problem is designed to span **two weeks** where the topic block is two weeks long: week 1 of the block = first-pass start (checkpoint reflects early-stage progress), week 2 = refinement/convergence (checkpoint reflects near-final state), deadline shortly after week 2's session. Topics that only get one week (e.g. trusses, being simplest; a possible synthesis week, being applied-not-new) use a single-session start-and-finish instead — **block length is not uniform across topics**, and should be matched to how much genuine runway each topic's problem needs, not forced into a template.

## 6. Content design principles

### Bloom's-based online/live split
- **Online (Bloom 1-3)**: theory videos (both analytical mechanics AND FEA — these should now be *consistently* flipped; historically analytical content was lectured live while FEA was already flipped, which was an inconsistency with no remaining justification once time constraints from a neighbouring first-year module don't apply here), ABAQUS procedural tutorials, derivations (see below)
- **Live (Bloom 4-6)**: judgement/reasoning work — "how would you model this," discussing trade-offs, analysing real structures
- **One deliberate exception**: the ABAQUS problem's *start* is forced into session time despite being Bloom 3 (Apply), not because of its cognitive level, but because of direct evidence that unsupervised/optional access to it produces near-total avoidance. This is a supervision-based exception to the Bloom's rule, not a new general principle — procedural tutorials themselves stay online fine, only the *graded coursework problem* needed this exception.

### Derivations: exposure, not training
- Mathematical derivations (e.g. beam stiffness matrix via unit displacement method) should be **watched once, for exposure** — so students understand the maths isn't arbitrary and *could* eventually justify an element choice "by referring to formulation" in an exam answer — but **never trained as a reproducible skill**.
- Cut entirely: teaching the *same result* via a second method (e.g. virtual work, after unit displacement was already used) — this was previously done and has no assessment payoff, since nothing tests reproduction of either method
- Cut entirely: extension exercises asking students to derive further columns/rows themselves — this is *training*, not exposure, and contradicts "we'd never assess reproducing this"
- Add: a short, explicit "what this actually tells you" layer after the derivation — why axial/bending decouple, why rotation is a DOF, what the matrix structure implies physically. This didn't exist as standalone content before (it was implicit in the derivation) and is the piece that actually feeds MLO2/3 justification-writing.
- This reasoning was checked against FHEQ Level 5 descriptors (QAA), which emphasise *applying* and *critically evaluating* established principles, not reproducing derivations from first principles — supportive of, but not the sole justification for, this decision. The person has editorial freedom here regardless of the descriptor.
- Rationale for keeping any derivation content at all despite it being unassessed directly: it can still show up **indirectly**, as richer, better-substantiated justification in things that *are* marked (e.g. Q16/17's "justify your element choice" prose), separating a first-class answer from a merely-passing one. This only works if band-level rubrics (see above) actually have headroom to reward that depth.

### The "visible wrong answer" heuristic for what's worth live/demonstrated teaching
A generalisable principle that emerged from discussing the existing Gauss-integration (P=1 vs P=2) and linear-vs-cubic shape function convergence demonstrations, both already well-designed:
- **Keep and prioritise**: content where you can show a numerically or physically *wrong* result next to a *right* one, changing only one variable (mesh density, shape function order, aspect ratio) — students see the consequence directly, no need to prove *why* algebraically
- **Cut or minimise**: content that's pure algebraic formalism with no physical/numerical consequence a student can observe (e.g. calculating a Jacobian determinant by hand for its own sake, matching partial derivatives of shape functions) — this is exactly the content most likely to produce a "why are we bothering" reaction, because there's nothing to see

### Torsion
Dropped last year purely for time reasons (to avoid overloading a neighbouring first-year Statics & Dynamics module). Now back in scope for this redesign, since that specific constraint doesn't apply at Level 5. Its exact placement in the new schedule is still open — noted as a separate decision from the general redesign principles above.

## 7. Schedule (working version, subject to change)

Real teaching weeks: 1-5, 7-11 (10 total). Reading week = 6. Revision = 12 (no new content).

Rough block shape being tested (exact week boundaries still open, and topic block length is NOT assumed uniform):
- Week 1: orientation + 1D stress recap + first ABAQUS exposure (no prior week, no online/in-class split needed — see LiaScript doc)
- Trusses (shorter block — simplest content)
- Bending (longer block)
- Torsion (returning — placement TBD)
- Plane stress (longer block)
- Shells (longer block)
- Possible synthesis week before revision: multi-element structure rehearsing Q16/17 format directly, closing out "which element type do I use" (including where 3D/solid elements fit — this is genuinely light content, essentially "when nothing else fits, use 3D," and doesn't need its own dedicated week)

## 8. LiaScript authoring conventions

- **Folder structure**: one self-contained folder per week, e.g. `week01/week01.md` plus `week01/images/`, `week01/other-files/` etc. All files related to that week live together (not a shared images pool, not md-files-in-base-with-per-week-image-subfolders) — chosen because other file types (input files, worked solutions) will likely join images over time, and self-contained folders are easiest to share/hand off piece by piece. Zero-pad week numbers (`week01` not `week1`) so folders sort correctly past week 9.
- **Online/in-class split**: within a week's `.md` file, mark a clear divider (e.g. a horizontal rule + bold label reading "ONLINE PREP ENDS HERE") between self-paced prep content and what happens live in session. Week 1 doesn't need this (no prior prep exists), but every week from Trusses onward should.
- **Images**: extracted directly from source `.pptx` files via `unzip` (they're embedded in `ppt/media/`) — cross-reference `ppt/slides/_rels/slideN.xml.rels` to match specific images to specific slides, rather than guessing from filenames alone.
- **Quiz syntax**: LiaScript supports fill-in-blank (`[[answer]]`), single/multiple choice, etc. — exact syntax should be verified by testing in the actual LiaScript renderer (see below), not assumed correct from a first draft.
- **Previewing**:
  - Quick/no-image-support: paste into the Live Editor at `liascript.github.io/LiveEditor`
  - Full local preview with working images and live-reload: install the **LiaScript-Preview** extension in VS Code, open the `.md` file, press Alt+L (Cmd+L on Mac) — starts a local dev server, auto-reloads on save
  - To publish/share a working version: host the folder (e.g. GitHub repo/Gist) and open via `https://liascript.github.io/course/?<raw-file-url>`
- **Existing Beam Elements content review** (done in detail during this conversation) can serve as the template/test case for restructuring other topics, since it's the topic most thoroughly analysed against all the principles above.

## 9. What's still open / not yet decided

- Torsion's exact placement in the new schedule
- Exact week boundaries for each topic block under the new non-uniform-length approach
- Whether quiz content should include *any* full hand-calc questions (currently: no — quiz keeps only quick conceptual/reasoning checks; full hand-calc execution lives entirely in the new standalone Analytical component)
- The Socratic AI chatbot: confirmed as a genuine future addition, **not** part of this redesign phase. Its realistic value is reducing default drift to generic AI tools among students who'd otherwise engage properly but default to low-friction tab-switching — it is **not** expected to meaningfully deter deliberate AI-driven shortcutting on coursework (a student intent on shortcutting has no reason to prefer a tool that won't just give them the answer). Needs a platform-independent API-endpoint architecture so it isn't tied to LiaScript specifically, whenever it is eventually built.
- Full band-level rubric rewrite for Q16/Q17 (general approach — banded, holistic — is agreed; specific band language not yet drafted)
- Reworking each topic's actual content (video scripts, tutorial steps, judgement-practice problems) into the new structure — only Week 1 and a detailed *analysis* of Beam Elements exist so far; nothing else has been rebuilt yet
