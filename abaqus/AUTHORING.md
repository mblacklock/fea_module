# Maintaining the ABAQUS tutorial library

`README.md` is the student-facing LiaScript index. Each tutorial has its own folder, Markdown file and screenshot folder. Edit the standalone tutorial once; the Week 1 lesson and library both link to that same file.

The module-wide principles are in [TEACHING-DESIGN.md](../TEACHING-DESIGN.md); development, multi-PC synchronisation and publication are in [README.md](../README.md). Keep tutorial-specific corrections and verification evidence here, and week-specific delivery decisions in weekly notes. Preserve original Word/PDF/image resources when adapting them into LiaScript.

The intended delivery is a standalone LiaScript tutorial, not just a link to its original PDF. Week 10's four plane-stress tutorials are now converted under `Topic3/`; the original PDFs in `Topic3/files/` remain unchanged as source resources. The weekly lesson and tutorial library link to the canonical LiaScript guides.

## Sources

| Tutorial | Word source in `ABAQUS tutorials/` | Screenshot folder |
| --- | --- | --- |
| General/IntroToABAQUS/IntroToABAQUS.md | Wk1_1_Introduction to ABAQUS finite element analysis software.docx | General_IntroToABAQUS |
| General/OpeningABAQUS/OpeningABAQUS.md | Wk1_2_Opening ABAQUS and setting the work directory.docx | General_OpeningABAQUS |
| General/CreatingRunningJob/CreatingRunningJob.md | Wk1_3_Creating and running a job.docx | General_CreatingRunningJob |
| General/ViewingInterpretingResults/ViewingInterpretingResults.md | Wk1_4_Viewing and interpreting results.docx | General_ViewingInterpretingResults |
| General/ImportingCAD/ImportingCAD.md | Wk7_1_Importing a CAD file.docx | All 11 embedded Word images, copied as `General_ImportingCAD_img01`–`img11` |
| Topic1/IntroToInputFiles/IntroToInputFiles.md | Wk2_1_Learning Outcome 1.2 - Introduction to ABAQUS input files.docx | `t1w1/Truss_IntroInputFiles_img01`–`img21` |
| Topic1/MultipleTrussElements/MultipleTrussElements.md | Wk2_2_Learning Outcome 1.2 - Multiple 1D truss elements with different section properties.docx | `t1w1/Truss_MultipleElements_img01`–`img10` |
| Topic1/Truss2DCAE/Truss2DCAE.md | Wk3_1_2D truss & CAE.docx | `t1w2/1.png`–`40.png` (24a, 25a and 29a) |

The Week 3 CAE tutorial retains the substantive Word instructions in sequence and uses all 40 numbered screenshots, copied with descriptive `Truss_2DCAE_imgNN_Description.png` names. The original source images are retained. The current Learning Outcome 1.5 supplied for Week 3 replaces the older outcome wording in the Word header. Corrections: `v3` replaces the repeated `v1` in the support condition; both 50 N load components are 35.36 N; boundary-condition questions refer to node 3 rather than the loaded node 2. The source input file and screenshots use T3D2; the planar reference file uses T2D2, consistent with the CAE instructions. Screenshot discrepancies are identified beside the images. The answer checks retain the source results for the rounded 35.36 N components. They have been checked analytically; the new reference file has not been run in ABAQUS.

Week 3 includes the four supplied Panopto recording IDs in teaching order and links to `week03/files/Week 3 Online Videos.pdf`. Week 3 currently contains pre-work only; in-class activities will be added separately.

The screenshots originated in the supplied General folders. The model diagram, annotated input-file screenshot and selected results screenshots were updated to match the Week 1 axial-bar calculation. The canonical practice file is `General/IntroToABAQUS/files/intro.inp`; it was adapted from `General_IntroToABAQUS/intro.inp`. The setup, job and results tutorials link to this one copy. Keep the library folders together when sharing the full sequence.

The first two tutorials use a mix of sidebar sections and click reveals. Tutorials 3 and 4 follow the original Word text in its original order, with numbered sidebar headings, reveal markup, prerequisites and navigation added around it. The displacement-magnitude description and spelling errors identified in the original results tutorial have been corrected in the student page.

The tutorial input file matches the Week 1 class calculation: `intro.inp` uses 1000 mm, 10 mm², 200000 MPa and 5000 N, with node labels 100 and 200. Use this shared file for the Week 1 introductory tutorials. The separate `week01/other-files/week01_axial_bar.inp` is not part of the student workflow.

The two Topic 1 tutorials are standalone LiaScript pages linked from Week 2 and the library index. Their Word prose is retained in sequence. The numbered `t1w1` images were renamed descriptively and copied into the tutorial image folders; each page uses the diagrams or screenshots that help explain a step, with copyable code blocks for the input file. `Truss_MultipleElements_img11_VariablePropertiesProblem.png` is a separate problem diagram and is kept in the image folder for later use. The first Word file states 210 MPa in its opening paragraph, while the material definition and worked result use 210 GPa (210000 MPa); the student page uses 210 GPa consistently.

## Preview and links

`General/OffCampusAccess/OffCampusAccess.md` combines two options for accessing ABAQUS outside campus, each on its own sidebar page. The MyAccess page uses the three supplied screenshots and click reveals for choosing a room and connecting. EB DZ is The Zone; SAN 201 is an alternative suggested by the module leader. Most rooms are listed after 5 pm on weekdays and at weekends. Availability figures in the screenshot are illustrative. The Learning Edition page includes the supplied download screenshot, vendor link, Windows requirement, University support limitation, 1000-node limit and CAD-import restriction.

Use the whole-repository preview workflow in [README.md](../README.md#local-preview-and-checks). Ports are local to the current environment; old port-3009/3010 review links are historical, not a running service on another PC.

The tutorials default to Presentation mode so reveal steps work when opened. Students can switch to Textbook mode to read all content at once. Board Mode provides a font-size control for demonstrations.

`../course-links.js` is a small shared navigation helper. It makes links created with the `course` macro open another Markdown lesson in the same LiaScript reader. Relative file paths remain editable and work both locally and after hosting, without hardcoded localhost URLs in the lessons. For example:

```markdown
@[course(Opening ABAQUS)](General/OpeningABAQUS/OpeningABAQUS.md)
```

Keep `course-links.js` alongside the `abaqus` and week folders when publishing. Images and `.inp` downloads use ordinary relative Markdown links.

## Week 5 beam tutorials

Week 5 uses `week05/week05.md` and three standalone tutorials: `Topic2/BeamElements/BeamElements.md`, `Topic2/MeshConvergence/MeshConvergence.md`, and `Topic2/DistributedLoads/DistributedLoads.md`. Their sources are `Wk5_1_Beam elements.docx`, `Wk5_2_Beam elements - distributed load.docx`, and the numbered `t2w1` screenshot folder. Screenshots use descriptive names. The convergence tutorial owns the six mesh-refinement and formulation-comparison images moved out of the beam setup tutorial. Images removed from the student text by the author are retained under `tmp/week05-source-review/unused-beam-images` rather than left unused in the active image folder. Image numbering follows first appearance in each tutorial. The original Word and screenshot files are retained.

The substantive Word instructions are retained in sequence. Corrections align the planar workflow on B21/B23 rather than the B31/B33 shown in several source screenshots; use Poisson's ratio 0.3; describe the section-orientation vector as the first section axis; restrain all active DOFs if a 3D model is chosen; and identify the loaded free end as node 3 after the two-element refinement. The seed-size screenshot shows 300 but the actual beam needs 255 mm for the single-element example. The source's distributed-load tutorial outcome number is aligned to 2.4. The comparison also notes that B21/B31 include shear flexibility while B23/B33 do not.

Copyable code and complete planar reference input files accompany the screenshots. These files have been checked for consistency but have not been run in ABAQUS. Numerical comparison values are explicitly identified as the original tutorial's reference results.

Week 5 required preparation now comprises four recordings (introduction, overview, unit displacement and transformation), three self-contained LiaScript shape-function pages, and the three tutorials. The shape-function pages explain linear truss interpolation, the four bending end conditions, cubic beam interpolation and the four nodal contributions, with original SVG sketches and conceptual checks. They do not require virtual work or formation of the strain–displacement matrix. The polynomial expressions in x and L are visible before the sketching prompt. The beam reference sketches are omitted from the current pre-class document and retained as an SVG for the later in-class section; the quick check is revealed on click. The unit-displacement page explicitly links to Week 4 and asks students to follow one worked column rather than practise deriving the whole matrix. Outcome 2.5 retains the original wording with virtual work bracketed and marked optional; outcome 2.6 retains its original wording throughout; the required and optional preparation labels describe the agreed delivery structure without rewriting the outcomes.

Five recordings are in a separate optional sequence after the required completion check: virtual work for trusses, virtual work for beams, the full shape-function derivation, the strain–displacement matrix, and stiffness integration. These are explicitly excluded from the required preparation and Week 5 quiz. All nine supplied Panopto IDs are embedded on their corresponding required or optional pages. The original `Week 5 Online Videos.pdf` remains unchanged; `Week 6 Online Videos.pdf` is copied unchanged as `Beam Shape Functions - Partial Notes.pdf` for the optional derivations. The fuller `Downloads/Online Videos.pdf` was reviewed as an authoring source, not published. Week 5 now also contains the 150-minute in-class sequence: retrieval, matrix interpretation, truss and beam shape-function sketches, a midpoint-deflection demonstration, convergence and modelling choices, a break, a short two-element bending assembly, and the assessed ABAQUS beam launch with supported working time. Reference answers and the saved beam sketches are in dropdowns. The assembly uses equal element lengths and bending DOFs only, with the assembled matrix checked independently. The assessed-problem diagram follows the 2026–27 ABAQUS problem PDF; the setup reference explicitly distinguishes its vertical z axis from the planar tutorial workflow. A completion check and after-class section follow before the optional recordings.

Official references used to check the corrections: [beam element library](https://docs.software.vt.edu/abaqusv2023/English/SIMACAEELMRefMap/simaelm-r-beamlibrary.htm), [beam section orientation](https://docs.software.vt.edu/abaqusv2025/English/SIMACAEELMRefMap/simaelm-c-beamcrosssection.htm), and [distributed loads](https://docs.software.vt.edu/abaqusv2025/English/SIMACAEPRCRefMap/simaprc-c-loaddistributed.htm).

## Adding recordings

The General CAD-import tutorial retains the substantive instructions from `Wk7_1_Importing a CAD file.docx` in sequence, with numbered sidebar sections and click reveals. It includes its own `files/SPRING.stp`, copied unchanged from the supplied source. The source's “student version” note is updated to “Learning Edition”, with a link to the off-campus access guide; “got to” is corrected to “go to”. An added note distinguishes curve-display refinement from mesh refinement. The final source screenshots illustrate subsequent modelling and results, rather than specify values for the optional Week 5 problem. The tutorial is linked from both General and full library indexes and from the Week 5 optional spring problem.

The supplied Word tutorials contain no video URLs. To add a recording, embed it within the corresponding standalone tutorial using `!?[Video title](URL)`, or use a normal link if the authenticated video platform does not permit embedding. Do not duplicate the recording's tutorial content inside each weekly lesson.

## Verification

For the current `intro.inp`, the analytical Week 1 calculation predicts:

- U1 at node 100: 0 mm.
- U1 at node 200: 2.5 mm.
- RF1 at node 100: −5000 N.
- S11: 500 MPa.
- E11: 0.0025.

These are analytical expectations, not a recorded Abaqus verification of the adapted file. An earlier Abaqus Learning Edition 2024 run verified the supplied original 110 mm/195 N input file; its results do not apply to the current shared input file. The revised tutorials 3 and 4 were checked against every substantive paragraph in their Word sources, and their sidebar sections and reveal steps were exercised in the local LiaScript renderer. Their local image, input-file, navigation and helper-script paths resolve.

## Week 10 plane-stress tutorials — 27 November 2026

The four canonical guides are `Topic3/PlaneStressInput/PlaneStressInput.md`, `Topic3/PlaneStressCAE/PlaneStressCAE.md`, `Topic3/SymmetryBCs/SymmetryBCs.md` and `Topic3/Partitioning/Partitioning.md`. Sources are `Wk9_1_2D plane stress input.docx`, `Wk9_2_2D plane stress CAE.docx`, `Wk9_3_SymmetryBCs.docx` and `Wk9_4_Partitioning.docx`, plus `ABAQUS tutorials/t4/`. The old Wk9 source names support current Week 10/LO3.4. Source Word/PDF files and all original screenshots are preserved.

The substantive workflow and source questions are retained, organised into numbered pages and click reveals. Embedded screenshots are copied under descriptive names. `t4/38.png`–`40.png` supply the coarse/global stress comparisons referred to by the partitioning text but absent from the Word image sequence. `t4/34.png` supplies the full-model diagram with 30 × 30 mm dimensions. All 47 copied images are used. The complete input file is copied unchanged from `t4/plane_stress.inp` into `PlaneStressInput/files/` and displayed as copyable text.

**Confirmed geometry decision:** the module leader requested matching the screenshots. The symmetry/partitioning guides therefore use a 15 × 15 mm quarter of a 30 × 30 mm full plate, hole centre (0,7.5), hole radius 2.5 mm, partition radius 3.5 mm. This supersedes the earlier unresolved 60/4 discrepancy. The 30 mm source diagram already matches those dimensions. Symmetry is U1=0 on both straight vertical-cut segments, U2=0 on the bottom cut; pressure −25 MPa is applied at the right outer edge. Do not clamp the hole or halve traction for the quarter model.

Corrections made in the conversion: E=200 GPa=200000 MPa, not the input Word's 200 MPa typo; `load_nodes` consistently replaces the stray `cload_nodes`; the stiffness formula refers to a plane-stress element, not a truss; CPS4/CPS4R both have four nodes; the source rotations-only question is omitted because this plane-stress model has no active rotational DOFs. A single element is an initial workflow comparison, not a convergence claim. The partitioning prose no longer claims that outer-region mesh quality is irrelevant or that rectangular-looking elements guarantee accuracy. The intended sweep has five divisions across the ring and thirty along each arc, with Quad/Sweep controls stated explicitly.

**Stress reference:** independently assembling and solving the 8-DOF single-CPS4 stiffness model with 2 × 2 Gauss integration gives U1 at the right nodes 0.00181916 mm, opposite U2 values ±0.00037638 mm, and maximum integration-point **von Mises** stress 24.47976635 MPa. Thus the Word's 24.4798/CAE's 24.5 reference is retained with an explicit stress measure and integration-point output position. S11 has a different maximum (approximately 25.9552 MPa); nodal extrapolation/averaging can also change a reported contour maximum. These are independent formulation checks, not a new recorded ABAQUS run.

Element names/active DOFs and integration behaviour were checked against the [official 2D element library](https://docs.software.vt.edu/abaqusv2026/English/SIMACAEELMRefMap/simaelm-r-2delem.htm) and [continuum guidance](https://docs.software.vt.edu/abaqusv2026/English/SIMACAEELMRefMap/simaelm-c-solidcont.htm). No original PDF was rewritten, and no new simulation result is asserted for the hole model.

### Conversion validation

- Source sync: fetched origin and confirmed develop had no incoming commits before editing; the working tree was clean at task start.
- All four tutorials were opened in the local LiaScript reader. All numbered sections were visited, Presentation reveal steps were exercised, Textbook mode was checked, and all 47 screenshot references loaded. No mathematical rendering errors were detected. The input tutorial's integration-point count and 24.48 MPa answer checks both accepted the intended answers.
- The single Week 10 tutorial page renders four links to the new canonical guides. The shared course navigation helper resolves the lesson, library, previous and next destinations to the expected reader URLs. All local Markdown/image/download/import paths were checked.
- The downloadable input file matches the supplied source byte-for-byte, and the four retained PDFs match their original files byte-for-byte. Source images/Word documents were not modified. The symmetry dimensions now match the confirmed screenshot choice.
- The single-element stress reference was independently checked using the CPS4 formulation. ABAQUS itself was not run for this conversion. No commit, push, merge or publication performed.
