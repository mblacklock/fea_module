# Maintaining the ABAQUS tutorial library

`README.md` is the student-facing LiaScript index. Each tutorial has its own folder, Markdown file and screenshot folder. Edit the standalone tutorial once; the Week 1 lesson and library both link to that same file.

## Sources

| Tutorial | Word source in `ABAQUS tutorials/` | Screenshot folder |
| --- | --- | --- |
| General/IntroToABAQUS/IntroToABAQUS.md | Wk1_1_Introduction to ABAQUS finite element analysis software.docx | General_IntroToABAQUS |
| General/OpeningABAQUS/OpeningABAQUS.md | Wk1_2_Opening ABAQUS and setting the work directory.docx | General_OpeningABAQUS |
| General/CreatingRunningJob/CreatingRunningJob.md | Wk1_3_Creating and running a job.docx | General_CreatingRunningJob |
| General/ViewingInterpretingResults/ViewingInterpretingResults.md | Wk1_4_Viewing and interpreting results.docx | General_ViewingInterpretingResults |
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

Open the entire `LiaScript` folder in VS Code so the preview server can serve the week folders, `abaqus/` and `course-links.js`. Open a tutorial Markdown file and use Alt+L. The current review server serves the whole folder at port 3010:

http://localhost:3010/liascript/index.html?http://localhost:3010/abaqus/README.md

The older port-3009 preview was limited to the Week 1 folder and cannot serve its sibling tutorial folders. Use the new preview for navigation between lessons.

The tutorials default to Presentation mode so reveal steps work when opened. Students can switch to Textbook mode to read all content at once. Board Mode provides a font-size control for demonstrations.

`../course-links.js` is a small shared navigation helper. It makes links created with the `course` macro open another Markdown lesson in the same LiaScript reader. Relative file paths remain editable and work both locally and after hosting, without hardcoded localhost URLs in the lessons. For example:

```markdown
@[course(Opening ABAQUS)](General/OpeningABAQUS/OpeningABAQUS.md)
```

Keep `course-links.js` alongside the `abaqus` and week folders when publishing. Images and `.inp` downloads use ordinary relative Markdown links.

## Future videos

The supplied Word tutorials contain no video URLs. To add a recording, embed it within the corresponding standalone tutorial using `!?[Video title](URL)`, or use a normal link if the authenticated video platform does not permit embedding. Do not duplicate the recording's tutorial content inside each weekly lesson.

## Verification

For the current `intro.inp`, the analytical Week 1 calculation predicts:

- U1 at node 100: 0 mm.
- U1 at node 200: 2.5 mm.
- RF1 at node 100: −5000 N.
- S11: 500 MPa.
- E11: 0.0025.

These are analytical expectations, not a recorded Abaqus verification of the adapted file. An earlier Abaqus Learning Edition 2024 run verified the supplied original 110 mm/195 N input file; its results do not apply to the current shared input file. The revised tutorials 3 and 4 were checked against every substantive paragraph in their Word sources, and their sidebar sections and reveal steps were exercised in the local LiaScript renderer. Their local image, input-file, navigation and helper-script paths resolve.
