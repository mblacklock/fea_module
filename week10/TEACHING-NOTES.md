# Week 10 — Pre-class authoring and source checks

## Current tracked state and handoff — 27 November 2026

The current `week10.md` is pre-class only; the in-class development and validation sections below describe a developed version subsequently removed for the pre-class release. The snapshot at `tmp/week10-release-backup/week10.md` is ignored and exists on this PC at this review. Git will not transfer it. Before resuming on another PC, explicitly arrange access to the snapshot or the relevant source version; these notes preserve rationale, not the complete removed lesson. Restore only the required in-class content/definitions after comparing current files, preserving subsequent pre-class edits.

The four plane-stress tutorials are now canonical LiaScript lessons under `abaqus/Topic3/`; the current weekly overview links to them. The original PDFs remain unchanged. The module leader confirmed that symmetry geometry should match the screenshots: 15 × 15 mm quarter, corresponding to a 30 × 30 mm full plate. The converted tutorials state E=200 GPa consistently. See the latest conversion record below; earlier source-discrepancy notes describe the original resources.

See [TEACHING-DESIGN.md](../TEACHING-DESIGN.md) for general design and solution-release principles and [README.md](../README.md) for multi-PC workflow. Historical validation below applies to the version and activity described, not automatically to the current release or public hosting.

## Final pre-class preparation decision and release approval — 27 November 2026

All **seven recordings** and all **four ABAQUS tutorials** remain required pre-class preparation, in their existing order.

The input-file tutorial remains required because understanding input-file structure is increasingly relevant to AI-assisted FE model generation, inspection and verification. Students need to understand the model definitions they generate or receive so they can inspect and verify them.

The earlier suggestion to make the input-file tutorial optional is **superseded** by this final decision.

The module leader has reviewed the current pre-class material and **approved it for release**. This records approval; it does not indicate that publication has occurred. The current weekly file remains pre-class only.

## Initial pre-class development

Created `week10.md` on `develop`. There was no existing Week 10 LiaScript file or Topic 3 tutorial library in this checkout. The lesson follows Weeks 8–9: module title, exact current learning outcomes, before-class guidance, seven recording pages with Panopto embeds/direct links and click-revealed conceptual checks, four tutorial introductions, and an eight-item completion checklist. No in-class sequence, assessment or extra practical exercise is added. Shared templates and previous weeks are unchanged.

The original four tutorial PDFs are copied byte-for-byte into `abaqus/Topic3/files/` and linked in the requested order. Their original filenames retain Wk9 numbering. They are not rewritten or converted into new tutorials. Existing source Word/PDF files outside the repository are untouched. No library index is changed as part of this task.

## Recording content and durations

All seven user-supplied links were opened in Panopto on 26 November 2026. The Captions panels were read, including the complete Jacobian transcript after its initial loading delay. Auto-generated captions can misrecognise mathematical symbols; the supplied handwritten notes and original PowerPoint were also inspected visually to check the mathematics. The player runtimes below total **30:57**. Lesson durations are rounded to approximate whole minutes and sum to 30 minutes, used for the student-facing total; no recording order or ID is changed.

| Video | Panopto ID | Runtime | Established content and guidance |
|:--|:--|:--|:--|
| 1: Shape Functions — Formulation Overview | fde6acd8-b66c-4ab4-ad13-b50e00820006 | 4:10 | Virtual-work route: displacement derivatives give strain, displacement interpolation uses nodal values, B relates nodal displacements to strain, and stiffness integrates t B-transpose D B over area. This is an overview, not the detailed shape-function derivation. |
| 2: Parametric Coordinates | d050ff26-dd17-4a85-aa5e-b50e0081ffe1 | 3:23 | Reference coordinates range from −1 to +1; four nodal unknowns per displacement direction lead to terms 1, xi, eta and xi eta. |
| 3: Shape Functions — Deriving the Interpolation | a46f5c32-40f6-45a8-9e96-b50e0082058b | 7:43 | Four corner conditions determine interpolation coefficients; regrouping gives N1–N4. The same functions interpolate geometry and displacement in an isoparametric element. |
| 4: Visualisation of Shape Functions | e0cb219f-2b0b-4783-afa8-b50e008208dc | 1:46 | N1 is one at its own node and zero at the other nodes; shape-function visualisation and partition of unity. |
| 5: Strain–Displacement Matrix | 803ab0a8-a023-4163-ae8d-b50e00820e18 | 2:22 | Substitute the displacement interpolation into the normal and engineering shear strain derivatives, and collect the B matrix. |
| 6: Jacobian | e187e120-82c5-49c4-b307-b50e00820039 | 5:21 | Transform parametric shape-function derivatives to physical derivatives for B using the inverse Jacobian; construct J from coordinate derivatives and use det J to transform the area integral. |
| 7: Numerical Integration | e9e291eb-ba28-419f-9d38-b50e0082005f | 6:12 | Gauss points and weights; one/two points per reference direction; CPS4 versus CPS4R; rectangular versus distorted quadrilateral integration. |

Brief playback and opening slides were inspected for Videos 1 and 6; this was not a full uninterrupted playback test of all seven recordings or a student-account permissions test. Panopto titles use LO3.3; the Jacobian and integration titles restart their internal recording suffixes at _1/_2. The student lesson preserves the supplied seven-video teaching order rather than treating those suffixes as a new sequence.

## Other sources and learning-outcome numbering

- `TLO List.docx` and the original Week 10 PowerPoint (slides 3 and 25) agree on **3.3: Derive the stiffness matrix for plane stress elements** and **3.4: Determine the appropriate meshing strategy for a 2D analysis in ABAQUS, taking into account the limitations of the elements in terms of shape functions and numerical integration**. These exact outcomes are used.
- `Sessions/KB5034_Week_10_2D Stresses & Plane Stress Elements.pptx` was inspected through XML and actual rendered slides. Slides 7–8 establish the four-node shape functions/Jacobian context; slides 10–14 cover numerical integration. The later lectorial examples were not transferred into the pre-class guide.
- `Sessions/KB5034 Lectorial Plan - Wk10.docx` contains shell tutorials and shell-topic recordings, despite its Week 10 heading. It is an inconsistent historical planning source and is not used to identify these seven plane-stress videos. The Week 9 plan lists the four required plane-stress tutorials in the requested order.
- The supplied `Downloads/Online Videos1.pdf` (four pages) is headed **LO4.2**, and `Online Videos2.pdf` (two pages) is headed **LO4.3**. All six pages were rendered and inspected visually. The first covers the virtual-work overview, parametric shape functions, B and visualisation; the second covers the Jacobian and Gauss integration. They corroborate the recording split. Their numbering is historical; both support current LO3.3. **They are author reference only: no copies or student links are retained in the lesson or repository.**
- Three original tutorial documents/PDFs use **LO4.4** for the current LO3.4 wording. The files are retained unchanged. Historical numbering is recorded here only; the student-facing overview uses the current outcomes without an explanatory numbering note.
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

## Targeted pre-class review — 26 November 2026

The seven questions retain their conceptual focus and one correct answer each. Distractors now address plausible confusions between interpolation, strain derivatives, material response, coordinate mapping and quadrature. Video 6 guidance and feedback distinguish the inverse-Jacobian derivative transformation from determinant area scaling. The repeated opening bring-to-class reminder was removed; tutorial model-saving instructions and the final checklist reminder remain. The checklist, recording links and individual durations, tutorial links and original PDFs are unchanged.

Source validation confirmed one correct option and two distractors per video, unchanged section order, matching recording/tutorial links and individual durations, and a byte-equivalent completion checklist after newline normalisation. A fresh browser rendering check could not be completed because the local preview connection timed out; the earlier preview validation above predates these targeted edits.

## In-class development — 26 November 2026

The following sequence extends the pre-class guide. Its existing student-facing body, outcomes, recordings, questions and tutorial links are preserved. Only local solution-release definitions are added to the metadata. No shared templates or other weeks are edited.

### Indicative 150-minute sequence

| Minutes | Activity | Teaching intention |
|:--|:--|:--|
| 0–15 | Retrieval and current assessment feedback | Connect interpolation, derivative/area mapping and integration; invite questions without repeating historical performance statistics. |
| 15–40 | Jacobian demonstration and distortion investigation | 5–10 minutes live rectangle and transformed stiffness integral; 5 minutes symbolic interactive demonstration; 10 minutes geometry investigation and neighbour comparison, including the integration takeaway. |
| 40–65 | Two contrasting Gaussian integrals | Calculate exact, one-point and two-point values, then explain polynomial exactness. |
| 65–75 | Break | 10 minutes. |
| 75–90 | Integration and element choice | Compare CPS4/CPS4R sampling and connect formulation limitations to mesh decisions. |
| 90–135 | Plate modelling challenge and staged comparisons | Pairs propose and defend a model before seeing the original meshes and results. |
| 135–150 | Assessment-style question and consolidation | Transfer the reasoning to changed loads/supports and current assessment preparation. |

Timings are flexible. The plate study is the principal applied activity, not an additional prescribed simulation or convergence dataset. Use the existing tutorial skills and original plate specification; students first sketch and justify a plan. Do not require a new submission, invented simulation settings or an extra analysis sequence.

### Source inspection and retained material

The original `Sessions/KB5034_Week_10_2D Stresses & Plane Stress Elements.pptx` was opened read-only and all 25 slides exported for visual review. Slides 7–14 and 16–24 were inspected as rendered slides, together with the source XML and available local notes. There are no explanatory speaker notes for these examples. The historically inconsistent Week 10 lectorial-plan document remains unsuitable for specifying this session's resources.

- Slides 7–8: retain the 6 × 4 rectangle and counterclockwise node order for a short lecturer demonstration. Mapping/Jacobian equations and blank working space support OneNote; the constant matrix/determinant result is an independent teaching reveal, connected to the transformed stiffness integral. The full shape-function calculation is retained as a post-class resource. The former student calculation prompt and determinant checker are removed.
- Slide 9: retain the parallelogram (0,0), (3,0), (4,2), (1,2), its SVG and calculation in the post-class reference. The main sequence now uses an interactive distortion investigation instead of another calculation. Source coordinate units are unspecified; no mm units are invented.
- Slides 10–12: retain both original functions, 6x+2 and 3x²+2x+5, as one compact contrast. Omit the duplicate comparison exercise and blank repeated working layouts.
- Slides 13–14: retain the CPS4R/CPS4 comparison and the regular-versus-distorted geometry discussion. A clean reference-square SVG shows the actual one/four sampling locations. This replaces the source's blank teaching squares, with the same element comparison. Do not confuse P=2 per reference direction with two points in the 2D element.
- Slides 16–23: reuse crops of the original plate specification, coarse contour, globally refined mesh, partition, local seeds/mesh, locally refined contour and convergence plot. Omit slide 17's duplicate miniature plate image. Source crops retain the original stress legends, mesh topology and numerical labels; no results are redrawn or fabricated.
- Slide 24: retain the original assessment-style multiple-hole plate question, including its changed loading and supports, for discussion. Do not present it as a new assessed task or provide a fixed mesh as the only answer.
- Slides 4–5: omit historical scores/completion rates and replace them with space for current quiz/ABAQUS feedback. The summary and current Blackboard assessment instructions replace the old next-week administrative slide; learning outcomes are unchanged.

### Worked answers: Jacobian and geometry

Use the original convention J=[[x,xi,y,xi],[x,eta,y,eta]]. For the rectangle, x=3(1+xi), y=2(1+eta), giving J=diag(3,2) and det J=6. This scales reference area 4 to physical area 24. Each J entry has coordinate-length units and its determinant has squared coordinate units.

For the source parallelogram, x=2+1.5xi+0.5eta and y=1+eta. J=[[1.5,0],[0.5,1]], det J=1.5. Its physical area is 6, again four times the determinant. This is an important counterexample to the suggestion that every non-rectangular element must have a variable Jacobian. Both mappings are affine.

For a general bilinear quadrilateral the mapping includes a xi eta term; moving a single corner out of the parallelogram generally makes J and its determinant vary. The area ratio alone supplies the reference-domain average determinant, not its local values. The inverse-Jacobian derivative transformation uses the stated row convention, so no transpose is silently introduced. Small/zero/negative determinants must be distinguished: poor conditioning, collapse and reversed/invalid mapping respectively. A positive determinant alone does not establish good element quality.

### Jacobian activity: geometry and stiffness integration — 20–25 minutes

The teaching purpose is to explain why changing element geometry can make numerical integration of stiffness harder. Local area scaling and validity are supporting ideas, not the student investigation's organising questions.

**Lecturer calculation (5–10 minutes):** briefly derive J=diag(3,2), det J=6 for the original 6 × 4 rectangle in OneNote. Use the visible equality between the physical-area and parametric-coordinate stiffness integrals to identify the determinant factor. Open “Rectangle: Jacobian and determinant” after the calculation. The complete shape-function working, area interpretation and original parallelogram example remain in the hidden post-class reference.

**Interactive demonstration (5 minutes):** use the tool on “Problem: Investigating Element Distortion”. Begin with Reset 6 × 4, then make a non-rectangular parallelogram by moving both upper nodes. Compare its constant matrix/determinant with the rectangle. Move just one node to form a general quadrilateral and point to the new xi/eta terms in the expressions. Show CPS4 and CPS4R integration points in the reference element and their mapped positions in the physical element. Do not devote class time to searching for minima/maxima or constructing invalid elements; if an invalid shape arises, acknowledge the secondary warning and reset.

**Student investigation (10 minutes):** students compare a rectangle, a non-rectangular parallelogram and a general quadrilateral. Ask them to record the form of J and det J, classify dependence on parametric coordinates, then explain the implication for the stiffness integral. They compare reasoning with a neighbour before the brief class debrief. Direct coordinate editing is available in a collapsed dropdown for constructing exact geometries; dragging snaps to 0.1 to keep the expressions readable.

Example configurations, in node order 1–4:

| Geometry | Coordinates | Expected symbolic result |
|:--|:--|:--|
| Original rectangle | (0,0), (6,0), (6,4), (0,4) | J=[[3,0],[0,2]], det J=6. |
| Another rectangle | (0,0), (8,0), (8,3), (0,3) | J=[[4,0],[0,1.5]], det J=6; no position dependence. |
| Non-rectangular parallelogram | (0,0), (6,0), (8,4), (2,4) | J=[[3,0],[1,2]], det J=6; off-diagonal does not imply position dependence. |
| General quadrilateral | (0,0), (6,0), (4,3), (0,4) | J=[[2.5−0.5eta, −0.25−0.25eta],[−0.5−0.5xi, 1.75−0.25xi]], det J=4.25−0.75xi−eta. |
| Trapezoid | (0,0), (6,0), (4,4), (0,4) | J=[[2.5−0.5eta,0],[−0.5−0.5xi,2]], det J=5−eta; dependence may involve only one parameter. |

**Expected conclusion:** rectangles/parallelograms have affine mappings and constant J and determinant. A general valid non-parallelogram bilinear quadrilateral introduces coordinate dependence. The stiffness integrand is more complicated, so a fixed quadrature rule may be less accurate. This motivates the immediately following exact/one-point/two-point Gaussian exercise and the subsequent CPS4/CPS4R and mesh discussions. Do not state that every amount of distortion necessarily worsens every result.

### Technical explanation for the lecturer

With x=a0+a1xi+a2eta+a3xi eta and y=b0+b1xi+b2eta+b3xi eta, the lesson's row convention gives J=[[a1+a3eta,b1+b3eta],[a2+a3xi,b2+b3xi]]. Its determinant is

(a1b2−b1a2) + (a1b3−b1a3)xi + (a3b2−b3a2)eta.

The xi eta terms cancel exactly. The tool constructs these coefficients directly from nodal coordinates; it does not fit a polynomial to sample points. Expressions omit zero terms and unit coefficients of variables. Drag coordinates snap to 0.1; displayed decimal coefficients are rounded to ten significant figures to suppress floating-point noise.

**Important distinction, kept out of the concise student explanation:** B uses physical derivatives obtained through J inverse. For a distorted element, J inverse=adj(J)/det J; consequently B-transpose D B det J generally contains a polynomial numerator divided by det J. It can therefore be a rational function, not simply a higher-order polynomial. A polynomial Gauss exactness rule alone cannot guarantee exact integration of that general mapped integrand. det J itself remains affine, not a higher-degree polynomial. For affine geometry with constant material matrix/thickness, a 2 × 2 rule does exactly integrate the bilinear-element stiffness terms; that conclusion does not extend automatically to a general distorted element.

Geometry affects both the derivative transformation and the integration measure. Show the determinant factor in the integral without suggesting that it is the only geometry-dependent quantity. Explain validity briefly if needed: a correctly oriented non-degenerate mapping needs positive det J throughout, but positivity alone is not a complete quality criterion. Keep these checks secondary to the geometry-to-expression-to-quadrature sequence.

### Interactive implementation and publication

The existing `docs/interactive/jacobian_interactive.html` is revised in place, using the Mohr-tool colours and no external dependencies. The reference square and physical element have corresponding grids. Four physical nodes are draggable; reset restores the original rectangle. Symbolic J, symbolic det J and its constant/varying classification are prominent. CPS4/CPS4R point overlays show all four points at combinations of ±1/√3, or the central point, in both coordinate systems. Selecting an integration rule changes the overlay only; it does not modify the mapping.

The former heatmap, area/extrema dashboard and point probe are removed. Width (x) and height (y) with Set rectangle initialise a rectangular geometry; direct coordinate editing remains in a collapsed dropdown for exact parallelograms and other configurations. The physical element is displayed on the left and the reference element on the right. A small warning appears for zero/negative determinant mappings. Because det J is affine, corner checks establish its sign over the whole reference square; integration-point-only checks would be insufficient.

The existing GitHub Pages iframe approach is retained. The new HTML is not claimed to be hosted before the normal publication process; local validation uses an ignored preview copy substituting the local tool URL. No publication is performed.

### Worked answers: Gaussian integration

| Function | Exact integral | One point | Two points |
|:--|:--|:--|:--|
| 6x+2 | 4 | 4 | 4 |
| 3x²+2x+5 | 12 | 10 | 12 |

The one-point quadratic result underestimates by 2/12=16.7%. Points and weights are (0;2) and (−1/√3,+1/√3;1,1). P-point Gauss–Legendre integration is exact through degree 2P−1. Tensor-product rules apply that statement separately in each reference direction. The FE integrand also includes B and det J; it is not simply a shape function or a polynomial whose degree can be read from the element's displacement interpolation alone.

Let students calculate before working through the comparison in OneNote. The six numerical checkers accept an absolute error of 0.001; the full calculations are post-class solutions.

**Gaussian interactive location:** after the exact/one-point/two-point exercise. The planned companion demonstration should use the same source functions and integration rules, continuing the geometry → integrand → quadrature explanation. This revision does not create or change a Gaussian tool.

### Element discussion: technical boundaries

CPS4 uses four sampling points; CPS4R uses one. Both retain the four-node displacement interpolation. Reduced integration saves quadrature work, not nodal degrees of freedom or a guaranteed fourfold total runtime. Its hourglass modes require control and adequate meshing. Full integration avoids those modes but CPS4 can lock in bending. These points were checked against the [official ABAQUS continuum-element guidance](https://docs.software.vt.edu/abaqusv2026/English/SIMACAEELMRefMap/simaelm-c-solidcont.htm).

Keep volumetric locking separate from this elastic plane-stress example: do not claim that this E=200 GPa, nu=0.30 plate necessarily suffers it, or that reduced integration universally cures locking. The concise student page focuses on the directly relevant shear-locking/hourglass trade-off. Distortion can degrade both interpolation/derivative transformation and quadrature accuracy; “full” is not a universal exactness guarantee.

### Facilitating the plate study

Use approximately the first half of the 45-minute activity for pair proposals and comparison between pairs. Ask for a 2D representation, symmetry constraints, a justified element code, a refinement sketch and a convergence argument before opening any mesh/results dropdown. Use the remaining time to expose the original comparisons sequentially and ask students to revise their proposals.

Original specification: 100 × 100 mm plate, centred 6 mm **diameter** hole, thickness 0.1 mm, equal top/bottom tensile tractions of 50 MPa, E=200 GPa, nu=0.30. The source also lists density 7800 kg/m³, which is retained in the original image but does not affect the stated static elastic comparison. Do not reuse the earlier tutorial's differing plate dimensions or this module's other common nu values in this example.

Two symmetry planes permit a quarter model: u_x=0 on the vertical cut, u_y=0 on the horizontal cut. These remove the in-plane rigid motions without clamping tangential motion. The hole and unloaded outer side are free surfaces. Source images show the quarter with its hole at the lower-left corner. No additional fixed outer boundary should be inferred from the crop.

Invite CPS4/CPS4R proposals supported by formulation and mesh quality; the PowerPoint does not identify the actual element code used for the displayed contours. Local refinement should resolve curvature and the high stress gradient, with a sensible transition away from the hole. Do not prescribe one mesh or infer that approximately 450 elements is a universal convergence requirement.

Source evidence: the coarse approximately 250-element contour has maximum 128.1 MPa, and the locally refined approximately 450-element contour has maximum 149.8 MPa. Both are labelled S, Mises (Avg: 75%). The globally refined image is labelled approximately 12,500 elements but supplies no numerical stress. The final plot approaches 150 MPa and has no numerical element-count axis ticks or tolerance. It illustrates convergence, not a reproducible numerical dataset. Keep stress measure/location, averaging/extrapolation and boundary conditions consistent when assessing refinement. Do not silently replace this finite-plate example with the infinite-plate stress-concentration solution.

For the final assessment-style source question, ask students to check loading and supports as well as geometry before invoking symmetry. Compression can also raise stability questions that a simple in-plane plane-stress stress analysis does not answer; this is a limitation to recognise, not an extra buckling simulation assignment.

### Solution release and teaching reveals

Initial class release uses `@Week10Solution: @SolutionsHidden` in the lesson metadata. After class change that one definition to `@Week10Solution: @SolutionsVisible`. The local wrapper pattern matches Week 9; no shared template is modified. Full rectangle/parallelogram/Gauss worked calculations and the model-decision reference are retained in source inside these wrappers.

Retrieval feedback, the rectangle Jacobian/determinant result, element-behaviour discussion, and the staged original mesh/convergence comparisons are independent teaching reveals. They remain available during class, collapsed initially, regardless of the worked-solution switch. The six Gaussian numerical checkers remain available; the former Jacobian calculation checker is removed. Do not release results merely by advancing to the modelling-challenge page: comparisons are on the following page and initially collapsed.

### Initial in-class validation

- Independently evaluated the nodal shape-function derivatives at four reference positions for both original geometries; all J entries and determinants agree with the worked solutions. Independently integrated the two polynomials and evaluated both quadrature rules (4/4/4 and 12/10/12).
- The local LiaScript Presentation preview loaded successfully for this review, superseding the connection issue recorded for the earlier pre-class edit. All ten new pages were visited; no mathematical rendering errors were detected. All seven new numerical checkers accepted their intended answers.
- Verified the initial hidden solution wrappers on the calculation/comparison pages. Opened the independent geometry, element-behaviour and three staged mesh/results dropdowns while solutions remained hidden. All original image crops loaded. A separate ignored preview copy with SolutionsVisible confirmed that the post-class dropdowns become available and the Gaussian worked equations render. The actual source remains SolutionsHidden.
- Visually inspected the source slide renders, image crops and technical SVG renderings; corrected crop boundaries to retain the complete question and stress legends. All 11 image references resolve, and all three SVG files parse. Source comparison confirms the complete pre-class body is unchanged from immediately before this task.
- No ABAQUS model was run. Mesh counts/stress values are reported as original-slide evidence, with limitations recorded above. No recording/tutorial IDs, original PDFs, shared templates or other weeks were changed by this task. No commit, push or publication performed.

### Earlier area-focused Jacobian validation (superseded interface)

Verified constant-area rectangles and a parallelogram, a varying-determinant quadrilateral, a collapsed case and a negative-determinant case. Exact corner extrema were checked against a 21 × 21 reference grid for five geometries. Browser tests confirmed immediate coordinate-input updates (area 17, extrema 2.5/6), negative mapping detection (minimum −3.5), area suppression for invalid mappings, reset, rectangular dimension controls and node dragging. The heatmap and mapped grid were inspected visually.

The local LiaScript preview embeds the tool successfully using a local URL in an ignored preview copy. The demonstration's detailed references remain hidden with SolutionsHidden while the area-scaling teaching reveal opens independently; no equation-rendering errors were found. The investigation and engineering-takeaway pages render correctly. The public iframe URL is not claimed to be live before publication. Source comparison confirms that all pre-class material and everything from the Gaussian integration exercise onwards are unchanged by this revision. No commit, push or publication performed.

### Symbolic Jacobian revision: validation

The displayed coefficients were verified for the default rectangle, an 8 × 3 rectangle, a sheared parallelogram, a general quadrilateral and a trapezoid. Symbolic J and det J were also checked against direct shape-function derivatives at 2,000 parametric positions across 80 geometries. Zero terms/unit coefficients are suppressed correctly; Gauss-point coordinates and one/four point counts were checked independently.

Browser checks confirmed the constant rectangle/parallelogram expressions, the general result det J=4.25−0.75xi−eta, immediate updates from coordinate edits and dragging, reset, secondary invalid-mapping warnings, and CPS4/CPS4R overlays in both views. The simplified layout was inspected visually. The local LiaScript embed, transformed integral, teaching reveal and Gaussian transition rendered without detected equation errors. The active source solution setting was already SolutionsVisible at the start of this revision and is preserved; it was not switched for this task. Detailed calculations remain within the existing release mechanism.

Source comparison confirms the complete pre-class section and all content from “Problem: Compare Gaussian Integration Rules” onwards are unchanged. The same GitHub Pages iframe URL is retained. No commit, push or publication performed.

### Pre-class release layout — 27 November 2026

The four ABAQUS tutorial introductions and unchanged PDF links are consolidated on one page, with brief focus guidance and the original material-unit correction. The working `week10.md` remains pre-class only. The full snapshot is retained at ignored `tmp/week10-release-backup/week10.md`; when resuming in-class development, restore the in-class section and its release definitions rather than overwriting subsequent pre-class edits with the old snapshot.

## Week 10 ABAQUS tutorial conversion — 27 November 2026

Created four standalone Topic 3 LiaScript tutorials in the original order, with source screenshots, numbered sidebar steps, click reveals, prerequisite/next-guide navigation and the complete copyable/downloadable input file. Updated the four links on the single weekly tutorial-introduction page and added Topic 3 to the tutorial library. Recordings, retrieval questions, checklist and the pre-class-only state remain unchanged.

The geometry now follows the confirmed screenshot choice: 15 × 15 mm quarter with hole centre (0,7.5), radius 2.5 mm and partition radius 3.5 mm; the full plate is 30 × 30 mm. The existing matching 30 mm diagram is used. Input-file unit/set-name/element-description errors are corrected, and the maximum stress check explicitly asks for integration-point S, Mises. The original 24.48 MPa value agrees with an independent single-element formulation calculation. Full conversion provenance and technical corrections are in [ABAQUS authoring notes](../abaqus/AUTHORING.md). No source Word/PDF or existing weekly activity is rewritten.

### Conversion validation

- Source sync: fetched origin and confirmed develop had no incoming commits before editing; the working tree was clean at task start.
- All four tutorials were opened in the local LiaScript reader. All numbered sections were visited, Presentation reveal steps were exercised, Textbook mode was checked, and all 47 screenshot references loaded. No mathematical rendering errors were detected. The input tutorial's integration-point count and 24.48 MPa answer checks both accepted the intended answers.
- The single Week 10 tutorial page renders four links to the new canonical guides. The shared course navigation helper resolves the lesson, library, previous and next destinations to the expected reader URLs. All local Markdown/image/download/import paths were checked.
- The downloadable input file matches the supplied source byte-for-byte, and the four retained PDFs match their original files byte-for-byte. Source images/Word documents were not modified. The symmetry dimensions now match the confirmed screenshot choice.
- The single-element stress reference was independently checked using the CPS4 formulation. ABAQUS itself was not run for this conversion. No commit, push, merge or publication performed.
