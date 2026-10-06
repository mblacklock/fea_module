<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 1.0.0
language: en
mode: Textbook
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
comment: A reusable library of ABAQUS practical tutorials.

script: ../course-links.js

@course: <a href="@1" data-lia-course="true">@0</a>
-->

# ABAQUS tutorial library

Standalone guides to using ABAQUS. Start with the beginner sequence, or return directly to the task you need. Each guide contains written instructions and screenshots.

Use **Textbook** mode for self-paced reading. Switch to **Presentation** mode for a demonstration; Board Mode's **AA** button adjusts the displayed text size. Click screenshots to enlarge them.

## General

**First used in Week 1. Complete these in order on your first visit.** @[course(Open the General category)](General/README.md).

1. @[course(Introduction to ABAQUS and input files)](General/IntroToABAQUS/IntroToABAQUS.md) — understand the workflow and download the example.
2. @[course(Opening ABAQUS and setting the work directory)](General/OpeningABAQUS/OpeningABAQUS.md) — start a session and organise your files.
3. @[course(Creating and running a job)](General/CreatingRunningJob/CreatingRunningJob.md) — submit an input file and check the job status.
4. @[course(Viewing and interpreting results)](General/ViewingInterpretingResults/ViewingInterpretingResults.md) — inspect contours and probe values.

[Download the shared example: intro.inp](General/IntroToABAQUS/files/intro.inp)

This example uses a 1000 mm bar with a 10 mm² cross-section, an elastic modulus of 200 GPa and a 5 kN load. It matches the Week 1 hand calculation.

## Topic 1: Axial stress and truss elements

**First used in Week 2.** @[course(Open the Topic 1 tutorials)](Topic1/README.md). The single-element input-file tutorial is followed by the two-element tutorial with different section properties.

@[course(Week 1 lesson)](../week01/week01.md) · @[course(Week 2 lesson)](../week02/week02.md)

**Week 3:** @[course(Introduction to ABAQUS CAE: 2D truss elements)](Topic1/Truss2DCAE/Truss2DCAE.md) — create a two-element 2D truss using both an input file and CAE.

@[course(Week 3 lesson)](../week03/week03.md)
