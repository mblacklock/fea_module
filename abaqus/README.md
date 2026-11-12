<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 1.0.1
language: en
icon: ../logo.png
mode: Textbook
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
comment: A reusable library of ABAQUS practical tutorials.

script: ../course-links.js

@course: <a href="@1" data-lia-course="true">@0</a>
-->

# ABAQUS tutorial library

All the ABAQUS tutorials for KB5034 in one place. You can open any guide directly from this library, as well as through the weekly lessons.

**New to ABAQUS?** Start with the four General tutorials below, in order. For revision or help with a particular task, go straight to the guide you need.

**Following a tutorial:** Use the **right arrow → at the bottom of the page** to reveal the next step or move to the next page. To read all the steps at once, select **Textbook mode** from the menu at the top. Click screenshots to enlarge them.

## General

**Getting started — first used in Week 1**

1. @[course(Introduction to ABAQUS and input files)](General/IntroToABAQUS/IntroToABAQUS.md) — understand the analysis workflow and inspect an input file.
2. @[course(Opening ABAQUS and setting the work directory)](General/OpeningABAQUS/OpeningABAQUS.md) — start ABAQUS and organise your working files.
3. @[course(Creating and running a job)](General/CreatingRunningJob/CreatingRunningJob.md) — submit an analysis and check its status.
4. @[course(Viewing and interpreting results)](General/ViewingInterpretingResults/ViewingInterpretingResults.md) — view contours, displacements and stress results.

[Download the shared introductory example: intro.inp](General/IntroToABAQUS/files/intro.inp)

**Access and other tools**

- @[course(Accessing ABAQUS outside campus)](General/OffCampusAccess/OffCampusAccess.md) — campus PC remote access and the free ABAQUS Learning Edition.
- @[course(Importing a CAD file into ABAQUS)](General/ImportingCAD/ImportingCAD.md) — import STEP geometry; includes the spring file for the optional Week 5 problem.

## Topic 1: Axial stress and truss elements

Complete the two 1D guides in order, then move on to the 2D truss tutorial.

1. @[course(Introduction to ABAQUS input files)](Topic1/IntroToInputFiles/IntroToInputFiles.md) — build a single 1D truss model. **Week 2.**
2. @[course(Multiple 1D truss elements with different section properties)](Topic1/MultipleTrussElements/MultipleTrussElements.md) — connect elements and assign different properties. **Week 2.**
3. @[course(Introduction to ABAQUS CAE: 2D truss elements)](Topic1/Truss2DCAE/Truss2DCAE.md) — model a 2D truss using an input file and the CAE interface. **Week 3.**

## Topic 2: Bending and beam elements

**First used in Week 5.** Follow these in order to build a beam model, investigate convergence and apply a distributed load.

1. @[course(Beam elements in ABAQUS)](Topic2/BeamElements/BeamElements.md) — create a cantilever using an input file and CAE.
2. @[course(Mesh convergence in ABAQUS)](Topic2/MeshConvergence/MeshConvergence.md) — refine the mesh and compare linear and cubic beam elements.
3. @[course(Distributed loads in ABAQUS)](Topic2/DistributedLoads/DistributedLoads.md) — apply distributed beam loads using an input file and CAE.
