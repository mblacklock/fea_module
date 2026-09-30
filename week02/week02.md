<!--
author:   Matthew Blacklock
email:    matthew.blacklock@northumbria.ac.uk
version:  0.2.0
language: en
mode:     Presentation
icon: ../logo.png
import:   https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
comment:  KB5034 Week 2 - axial stress and truss elements.

script: ../course-links.js

@course: <a href="@1" data-lia-course="true">@0</a>

@style

.lia-slide > .lia-slide__container {
    padding-top: 1.5rem !important;
}

h2 {
  border-left: 0.35rem solid #f28c28;
  font-family: Arial, Helvetica, sans-serif !important;
  padding-left: 0.7rem;
}
h1 {
  color: #171717;
  font-family: Arial, Helvetica, sans-serif !important;
  font-weight: 700 !important;
}

.lia-video-wrapper {
  width: 70%;
  height: auto !important;
  aspect-ratio: 16 / 9;
  padding-block-end: 0 !important;
  margin-inline: auto;
}

@media (max-width: 700px) {
  .lia-video-wrapper {
    width: 100%;
  }
}
@end
-->

# Week 2: Axial stress and truss elements

![Northumbria University Newcastle](../logo.png)<!--
style="width: 34%; min-width: 16rem;"
-->

**KB5034 Mechanics & Finite Element Analysis**<!-- 
style="font-size: 1.5em;" -->

<br>

**Dr Matthew Blacklock & Dr Farnoosh Farhad**

<br>

*School of Engineering, Physics & Mathematics*<!--
style="border-top: 2px solid #f28c28; display: inline-block; padding-top: 0.35rem;"
-->

---

@[course(Return to Week 1)](../week01/week01.md)

---

## Topic Learning Outcomes

By the end of this week, students will be able to:

<br>

**1.1.** Define the number of nodes, degrees of freedom and the size of the stiffness matrix for 1D and 2D truss elements.

<br>

**1.2.** Model a 1D truss structure using the finite element method and compare your results against hand-calculations.

<br>

**1.3.** Solve for a simple 1D truss structure using the assembly of stiffness matrices.

## A. INDEPENDENT STUDY: Before class

**PREPARATION STARTS HERE**

There are videos and ABAQUS tutorials to complete this week before class. Watch the recordings and complete the tutorials in order. 

Complete the quick checks before moving on.

## Video 1: Introduction to Truss Elements

!?[Introduction to Truss Elements](https://elp.northumbria.ac.uk/bbcswebdav/pid-22725446-dt-content-rid-524693242_2/xid-524693242_2)

[Open the video in Blackboard](https://elp.northumbria.ac.uk/bbcswebdav/pid-22725446-dt-content-rid-524693242_2/xid-524693242_2) if it does not play here.

{{1}}
********************
**Quick check**

In the ideal truss model used here, which internal action does an element carry?

<!-- data-solution-button="3" -->
[(X)] Axial tension or compression.
[( )] Bending moment only.
[( )] Torsion only.

An ideal truss element connects nodes and resists extension or shortening along its axis.
********************

## Video 2: Nodes, degrees of freedom and matrix size

**Learning Outcome 1.1. Define the number of nodes, degrees of freedom and the size of the stiffness matrix for 1D and 2D truss elements.**

<br>

!?[Learning Outcome 1.1: Nodes, degrees of freedom and stiffness-matrix size](https://elp.northumbria.ac.uk/bbcswebdav/pid-22725447-dt-content-rid-524693236_2/xid-524693236_2)

[Open the video in Blackboard](https://elp.northumbria.ac.uk/bbcswebdav/pid-22725447-dt-content-rid-524693236_2/xid-524693236_2) if it does not play here.

You are encouraged to take your own notes. However, partially filled out notes can be found [here](files/Week%202%20Online%20Video.pdf). You can fill in the blanks while watching the video(s).

{{1}}
********************
**Quick check**

After watching, complete the table. Enter matrix sizes as `2x2`, `3x3` etc.


<!--
data-solution-button="3"
data-type="none"
-->
| Element | Nodes | Translational DOFs per node | Element stiffness matrix |
|:---|:---:|:---:|:---:|
| 1D truss | [[2]] | [[1]], along the bar | [[2x2]] |
| 2D truss | [[2]] | [[2]], in $x$ and $y$ | [[4x4]] |
********************

{{2}}
********************
**Quick check**

Two 1D truss elements meet at one shared node. Before boundary conditions, how many nodal displacement DOFs and what size global stiffness matrix are needed?

<!-- data-solution-button="3" -->
[( )] 4 DOFs and a 4 × 4 matrix.
[(X)] 3 DOFs and a 3 × 3 matrix.
[( )] 2 DOFs and a 2 × 2 matrix.

The connected model has three distinct nodes. Each has one axial displacement DOF.
********************

## ABAQUS: 1D Truss Elements

Work through these tutorials in order.

1. @[course(Introduction to ABAQUS input files)](../abaqus/Topic1/IntroToInputFiles/IntroToInputFiles.md)
2. @[course(Multiple 1D truss elements with different section properties)](../abaqus/Topic1/MultipleTrussElements/MultipleTrussElements.md)

## Before class completion check

<br>

- [ ] **Quiz** - Complete the Blackboard Test for 1D Truss Elements in the Week 2 folder on the eLP. This counts towards your assessment.
- [ ] **Bring to class:** your notes, input files, and any questions from the videos or tutorials.

## B. IN CLASS: Axial stress and truss elements

---

**SUPPORTED CLASS STUDY STARTS HERE**
