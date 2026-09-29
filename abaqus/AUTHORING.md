# Maintaining the ABAQUS tutorial library

`README.md` is the student-facing LiaScript index. Each tutorial has its own folder, Markdown file and screenshot folder. Edit the standalone tutorial once; the Week 1 lesson and library both link to that same file.

## Sources

| Tutorial | Word source in `ABAQUS tutorials/` | Screenshot folder |
| --- | --- | --- |
| General/IntroToABAQUS/IntroToABAQUS.md | Wk1_1_Introduction to ABAQUS finite element analysis software.docx | General_IntroToABAQUS |
| General/OpeningABAQUS/OpeningABAQUS.md | Wk1_2_Opening ABAQUS and setting the work directory.docx | General_OpeningABAQUS |
| General/CreatingRunningJob/CreatingRunningJob.md | Wk1_3_Creating and running a job.docx | General_CreatingRunningJob |
| General/ViewingInterpretingResults/ViewingInterpretingResults.md | Wk1_4_Viewing and interpreting results.docx | General_ViewingInterpretingResults |

All 27 supplied screenshots were copied unchanged. The canonical practice file is `General/IntroToABAQUS/files/intro.inp`, copied unchanged from `General_IntroToABAQUS/intro.inp`. The setup, job and results tutorials link to this one copy. Keep the library folders together when sharing the full sequence.

The original workflow and screenshots are retained. The first tutorial preserves the supplied wording and sequence from its source PDF; only navigation and LiaScript reveal markup were added. The other tutorials were adapted for standalone use, with prerequisites, completion checks and troubleshooting. Added qualifications cover version-dependent menus, writable local drives, input-file compatibility and edition-dependent CAD import. Displacement magnitude is defined as the Euclidean norm, correcting the source's ambiguous description of a “magnitude sum”. Historic campus policies and assessment details are not presented as current universal requirements.

The tutorial model is separate from the Week 1 class model. `intro.inp` uses 110 mm, 45 mm², 149000 MPa and 195 N, with node labels 100 and 200. The class model uses 1000 mm, 10 mm², 200000 MPa and 5000 N, with node labels 1 and 2. Both the weekly lesson and tutorials identify this distinction.

## Preview and links

Open the entire `LiaScript` folder in VS Code so the preview server can serve the week folders, `abaqus/` and `course-links.js`. Open a tutorial Markdown file and use Alt+L. The current review server serves the whole folder at port 3010:

http://localhost:3010/liascript/index.html?http://localhost:3010/abaqus/README.md

The older port-3009 preview was limited to the Week 1 folder and cannot serve its sibling tutorial folders. Use the new preview for navigation between lessons.

The tutorials default to Textbook mode. They also import Board Mode for classroom demonstrations in Presentation mode. No additional fixed font-size rules are applied.

`../course-links.js` is a small shared navigation helper. It makes links created with the `course` macro open another Markdown lesson in the same LiaScript reader. Relative file paths remain editable and work both locally and after hosting, without hardcoded localhost URLs in the lessons. For example:

```markdown
@[course(Opening ABAQUS)](General/OpeningABAQUS/OpeningABAQUS.md)
```

Keep `course-links.js` alongside the `abaqus` and week folders when publishing. Images and `.inp` downloads use ordinary relative Markdown links. This is a local library, not a newly published Git repository.

## Future videos

The supplied Word tutorials contain no video URLs. To add a recording, embed it within the corresponding standalone tutorial using `!?[Video title](URL)`, or use a normal link if the authenticated video platform does not permit embedding. Do not duplicate the recording's tutorial content inside each weekly lesson.

## Verification

The original `intro.inp` completed in Abaqus Learning Edition 2024 with zero analysis errors and zero numerical-problem warnings. Its final output database reports:

- U1 at node 100: approximately zero (1.95 × 10⁻³⁴ mm).
- U1 at node 200: 0.00319911 mm.
- RF1 at node 100: −195 N.
- S11: 4.3333335 MPa.
- E11: 2.9082774 × 10⁻⁵.

One generic section warning appears during input processing. Original source files were not modified. Run files and the ODB-reading script are preserved in `../tmp/tutorial-verification/`.

All tutorial sections were opened in the local LiaScript renderer. All 27 screenshots loaded, the checked maths produced no rendering errors, and the results tutorial's text quiz accepted the correct unit. Library and next-tutorial links were exercised in the browser. The shared input file was checked byte-for-byte against the supplied original.
