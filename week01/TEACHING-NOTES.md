# Week 1 delivery notes

The student lesson is `week01.md`. Keep it with `images/` and `other-files/` so the relative links work. The previous draft and verification files are preserved separately in `../tmp/week01-support/`.

## Presenting and following along

Open the whole `LiaScript` folder in VS Code so the preview can serve the neighbouring `abaqus` tutorials and `course-links.js`. Open `week01.md` with the installed LiaScript Preview extension in VS Code and press Alt+L. Select Presentation mode for teaching, with narration muted if desired. Students can use the same lesson in Presentation mode during class or Textbook mode afterwards. Expand answers after students have attempted the activities. These answers are available to students, so the checks are formative practice.

Board Mode now supplies the presentation layout and font controls. In Presentation mode, click the **AA** toolbar button and adjust the **14–48 px** slider. The browser remembers the chosen size. Textbook mode retains the normal reading layout. The previous custom fixed sizes and `size-*` classes have been removed so they cannot override the slider. A copy of the previous lesson is saved in `../tmp/week01-support/week01.before-board-mode.md`.

The lesson imports the community template from https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md. Internet access is required to fetch it and its script when they are not already cached. Save and refresh your preview after this change.

For the current local review, the preview is at:

http://localhost:3010/liascript/index.html?http://localhost:3010/week01/week01.md

This preview depends on the local server remaining running. It is not a published student link. To distribute, host the lesson and its asset folders on an approved web host accessible to the LiaScript reader, then use `https://liascript.github.io/course/?<raw-markdown-url>`. Share that course link in Blackboard. Check video access using a student account before release. No material has been published by this task.

## Suggested 150-minute session

| Minutes | Activity |
| --- | --- |
| 0–45 | Orientation, weekly study pattern, learning outcomes and FEA introduction |
| 45–60 | Break |
| 60–75 | Axial-bar prediction and relationship between Hooke's law and stiffness |
| 75–105 | Group A: units and stress–strain tasks. Group B: supported ABAQUS activity |
| 105–135 | Groups swap. Each student operates the software and records their own checks |
| 135–150 | Resolve difficulties, support checkpoints and next-week preparation |

This follows the original Week 1 lectorial plan. Use the contents menu to jump between desk and PC activities. Later topic blocks should place their online preparation before their class divider. Week 1 has no advance preparation, so its independent section follows the class activity.

## Videos awaiting links

The source plan lists these four tutorials, but contains no video URLs:

| Tutorial | Planned duration | Link status |
| --- | --- | --- |
| Introduction to ABAQUS & input files | 5 minutes | Awaiting Blackboard/video URL |
| Opening ABAQUS and setting the work directory | 5 minutes | Awaiting Blackboard/video URL |
| Creating and running a job | 10 minutes | Awaiting Blackboard/video URL |
| Viewing and interpreting results | 10 minutes | Awaiting Blackboard/video URL |

The four Word tutorials have now been converted into standalone lessons under `../abaqus/`, with all their screenshots and the original `intro.inp`. Week 1 links to these lessons. When video links are available, embed each within its corresponding standalone tutorial. LiaScript video syntax is `!?[Descriptive title](VIDEO_URL)`. For authenticated video services that cannot be embedded, provide a normal link and retain the written activity. No separate Week 1 theory-video list was found. Week 2 theory and quiz resources are signposted without invented URLs or deadlines.

## Content and verification

- Retained the existing lesson's module team, outcomes, illustrations and preparation charts.
- Used `Sessions/KB5034 Lectorial Plan - Wk1.docx`, the Week 1 introduction slides and `LiaScript/KB5034_Redesign_Reference.md` to organise the lesson. The slide decks contain older dates, software versions and assessment arrangements, so the lesson directs students to the current Blackboard brief for those details.
- Added a new teaching input file, `other-files/week01_axial_bar.inp`, for the class calculation before the original tutorial files became available. The standalone tutorials now use their original `intro.inp`. This uses the existing slide's bar data and is an introductory ungraded example, not a replacement for the separate assessed analytical and ABAQUS problems.
- Ran it with Abaqus Learning Edition 2024. The completed analysis reports U1 = 2.5 mm, S11 = 500 MPa, E11 = 0.0025 and RF1 = −5000 N. The run emitted a generic section/contact warning and a scratch-directory cleanup permission warning after solving; the analysis completed and the output database was produced. Test the class computer workflow before teaching.
- Linear elasticity at 500 MPa is a modelling assumption, not a claim that a specified real material remains elastic at that stress. The lesson explicitly asks students to check yield strength before accepting that assumption.
- Verified the lesson in the installed LiaScript renderer, including a text-answer check and expandable worked solution. All local image and download references are checked separately. Video playback awaits the missing links.

## Authoring references

- [LiaScript documentation: quizzes, presentation modes and media](https://raw.githubusercontent.com/LiaScript/docs/master/README.md)
- [Abaqus: setting the work directory](https://docs.software.vt.edu/abaqusv2025/English/SIMACAECAERefMap/simacae-c-dbsmdbchangework.htm)
- [Abaqus: creating an analysis job from an input file](https://docs.software.vt.edu/abaqusv2025/English/SIMACAECAERefMap/simacae-t-anajobmancreatebtn.htm)
- [Abaqus: truss elements](https://docs.software.vt.edu/abaqusv2025/English/SIMACAEELMRefMap/simaelm-c-truss.htm)
