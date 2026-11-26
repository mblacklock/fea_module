# Week 10 — Pre-class authoring and source checks

## Scope and structure

Created `week10.md` on `develop`. There was no existing Week 10 LiaScript file or Topic 3 tutorial library in this checkout. The lesson follows Weeks 8–9: module title, exact current learning outcomes, before-class guidance, seven recording pages with Panopto embeds/direct links and click-revealed conceptual checks, four tutorial introductions, and an eight-item completion checklist. No in-class sequence, assessment or extra practical exercise is added. Shared templates and previous weeks are unchanged.

The original four tutorial PDFs are copied byte-for-byte into `abaqus/Topic3/files/` and linked in the requested order. Their original filenames retain Wk9 numbering. They are not rewritten or converted into new tutorials. Existing source Word/PDF files outside the repository are untouched. No library index is changed as part of this task.

## Recording content and durations

All seven user-supplied links were opened in Panopto on 26 November 2026. The Captions panels were read, including the complete Jacobian transcript after its initial loading delay. Auto-generated captions can misrecognise mathematical symbols; the supplied handwritten notes and original PowerPoint were also inspected visually to check the mathematics. The player runtimes below total **30:57**. Lesson durations are rounded to approximate whole minutes; no recording order or ID is changed.

| Video | Panopto ID | Runtime | Established content and guidance |
|:--|:--|:--|:--|
| 1: Shape Functions — Formulation Overview | fde6acd8-b66c-4ab4-ad13-b50e00820006 | 4:10 | Virtual-work route: displacement derivatives give strain, displacement interpolation uses nodal values, B relates nodal displacements to strain, and stiffness integrates t B-transpose D B over area. This is an overview, not the detailed shape-function derivation. |
| 2: Parametric Coordinates | d050ff26-dd17-4a85-aa5e-b50e0081ffe1 | 3:23 | Reference coordinates range from −1 to +1; four nodal unknowns per displacement direction lead to terms 1, xi, eta and xi eta. |
| 3: Shape Functions — Deriving the Interpolation | a46f5c32-40f6-45a8-9e96-b50e0082058b | 7:43 | Four corner conditions determine interpolation coefficients; regrouping gives N1–N4. The same functions interpolate geometry and displacement in an isoparametric element. |
| 4: Visualisation of Shape Functions | e0cb219f-2b0b-4783-afa8-b50e008208dc | 1:46 | N1 is one at its own node and zero at the other nodes; shape-function visualisation and partition of unity. |
| 5: Strain–Displacement Matrix | 803ab0a8-a023-4163-ae8d-b50e00820e18 | 2:22 | Substitute the displacement interpolation into the normal and engineering shear strain derivatives, and collect the B matrix. |
| 6: Jacobian | e187e120-82c5-49c4-b307-b50e00820039 | 5:21 | Rewrite the stiffness area integral in reference coordinates; construct J from coordinate derivatives and use det J for the physical area measure. |
| 7: Numerical Integration | e9e291eb-ba28-419f-9d38-b50e0082005f | 6:12 | Gauss points and weights; one/two points per reference direction; CPS4 versus CPS4R; rectangular versus distorted quadrilateral integration. |

Brief playback and opening slides were inspected for Videos 1 and 6; this was not a full uninterrupted playback test of all seven recordings or a student-account permissions test. Panopto titles use LO3.3; the Jacobian and integration titles restart their internal recording suffixes at _1/_2. The student lesson preserves the supplied seven-video teaching order rather than treating those suffixes as a new sequence.

## Other sources and learning-outcome numbering

- `TLO List.docx` and the original Week 10 PowerPoint (slides 3 and 25) agree on **3.3: Derive the stiffness matrix for plane stress elements** and **3.4: Determine the appropriate meshing strategy for a 2D analysis in ABAQUS, taking into account the limitations of the elements in terms of shape functions and numerical integration**. These exact outcomes are used.
- `Sessions/KB5034_Week_10_2D Stresses & Plane Stress Elements.pptx` was inspected through XML and actual rendered slides. Slides 7–8 establish the four-node shape functions/Jacobian context; slides 10–14 cover numerical integration. The later lectorial examples were not transferred into the pre-class guide.
- `Sessions/KB5034 Lectorial Plan - Wk10.docx` contains shell tutorials and shell-topic recordings, despite its Week 10 heading. It is an inconsistent historical planning source and is not used to identify these seven plane-stress videos. The Week 9 plan lists the four required plane-stress tutorials in the requested order.
- The supplied `Downloads/Online Videos1.pdf` (four pages) is headed **LO4.2**, and `Online Videos2.pdf` (two pages) is headed **LO4.3**. All six pages were rendered and inspected visually. The first covers the virtual-work overview, parametric shape functions, B and visualisation; the second covers the Jacobian and Gauss integration. They corroborate the recording split. Their numbering is historical; both support current LO3.3. **They are author reference only: no copies or student links are retained in the lesson or repository.**
- Three original tutorial documents/PDFs use **LO4.4** for the current LO3.4 wording. The files are retained unchanged, and a short note in the practical overview identifies the current outcome.
- Auto-generated captions contain older-looking references to 5.2/5.3 in places. These may be speech-recognition errors and are not treated as authoritative outcome numbering. The actual recording titles, observed opening slides and current TLO list identify 3.3.

## Deliberate departures and source issues

- The two Shape Functions headings are qualified as “Formulation Overview” and “Deriving the Interpolation”, based on the actual recordings. This makes their different purposes explicit without changing the recordings or their order.
- Use **bilinear** for the four-node quadrilateral interpolation, which includes xi eta and is linear in each reference coordinate separately. The recordings/old notes sometimes call these functions simply linear. No lengthy algebra is duplicated in the lesson.
- Reduced integration changes quadrature work, not the number of nodal unknowns. Its accuracy is not universally worse than full integration. The Video 7 feedback avoids repeating the recording's blanket “less accuracy” / “fewer equations” wording. Element naming/formulation was cross-checked against the [official 2D solid element library](https://docs.software.vt.edu/abaqusv2026/English/SIMACAEELMRefMap/simaelm-r-2delem.htm); the [official bending benchmark](https://docs.software.vt.edu/abaqusv2026/English/SIMACAEBMKRefMap/simabmk-c-linbending.htm) also demonstrates why accuracy depends on formulation and mesh.
- The stiffness overview assumes a constant-thickness, small-strain, linearly elastic plane-stress element, consistent with the supplied material. It uses the standard stiffness expression rather than copying the source slide's internal-force expression containing u as though it were k itself.
- **Input tutorial unit typo:** its opening prose says E = 200 MPa, whereas its diagram and matching CAE tutorial use 200 GPa. The introduction explicitly states 200 GPa = 200000 N/mm²; the original PDF is unchanged.
- **Symmetry geometry needs author confirmation before release:** the original full-plate figure says 60 × 60 mm, while its CAE instructions specify a 15 mm square and label this 60/4. A quarter model of a 60 × 60 mm plate has 30 × 30 mm in-plane dimensions. The intended geometry/hole positions should be confirmed rather than silently changing the original tutorial. The lesson introduces the symmetry conditions without adding new numerical geometry instructions.
- The input tutorial prose also alternates load_nodes/cload_nodes and contains a leftover “truss” reference in the section discussion. The guide asks students to check their actual sets/plane-stress section rather than reproducing those slips. Original tutorials remain unchanged as requested.

## Validation

- All seven supplied IDs appear once in embeds and once in matching direct Viewer links, in the supplied order. The existing shared Panopto macro and embed parameters are used unchanged.
- Exercised all seven native multiple-choice checks and their explanatory feedback in the LiaScript Presentation preview; each accepted the intended answer. Checked the initial hidden quick-check steps and inspected all lesson pages for mathematical rendering errors.
- Confirmed actual tutorial link elements render, including URL-encoded filenames with spaces. All four local tutorial paths, the shared template path and logo asset were checked. No new diagram assets are required.
- Copied tutorial hashes match the originals. Checked nodal interpolation/partition-of-unity properties, the dimensions of B-transpose D B, positive-orientation area mapping, and N–mm–MPa consistency. The supplied four tutorial PDFs were opened for inspection; ABAQUS was not executed.
- Scope remains pre-class only. No shared configuration, previous weeks, assessment, recording metadata or original source files were modified. No commit, push, merge or publication performed.

The lesson is complete as a pre-class guide. Recording content is established from captions and source notes; the unresolved symmetry-tutorial geometry discrepancy is a source-material issue to resolve before student release.
