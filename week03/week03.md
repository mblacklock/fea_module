<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 0.1.0
mode: Presentation
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
        https://raw.githubusercontent.com/MINT-the-GAP/lia-annotation/main/README.md
        ../common/templates.md
comment: KB5034 Week 3 - Topic 1: axial stress and 2D truss elements.
-->

# Week 3: 2D Truss Elements

@moduleTitle

**Topic 1: Axial Stress & Truss Elements**

---

@[course(Return to Week 2)](../week02/week02.md)

---

## Topic Learning Outcomes

By the end of this week, students will be able to:

<br>

**1.4.** **Assemble** the stiffness matrix for simple 2D truss structures with appropriate boundary conditions.

<br>

**1.5.** **Model** a 2D truss structure using the finite element method and compare your results against hand calculations.

<br>

**1.6.** **Determine** when modelling with truss elements is appropriate for real engineering structures based on the limitations of the element.


## A. INDEPENDENT STUDY: Before class

**PREPARATION STARTS HERE**

Watch the four videos on the assembly of 2D truss structures in order, then complete the ABAQUS CAE tutorial.

Complete the quick checks before moving on. Bring your notes, hand calculations and model files to class.

You are encouraged to take your own notes. However, partially filled out notes can be found [here](files/Week%203%20Online%20Videos.pdf). You can fill in the blanks while watching the videos.

## Video 1: Introduction to 2D Trusses

**Learning Outcome 1.4.** Assemble the stiffness matrix for simple 2D truss structures with appropriate boundary conditions.

You are encouraged to take your own notes. However, partially filled out notes can be found [here](files/Week%203%20Online%20Videos.pdf). You can fill in the blanks while watching the videos.

@Panopto(9e292adf-d3d4-45b6-9de7-b4db0130f659)

{{1}}
********************
**Quick check**

How many translational degrees of freedom does a two-node 2D truss element have in total?

<!-- data-solution-button="3" -->
[( )] 2
[(X)] 4
[( )] 6

[[?]] Each node can translate in the global $x$ and $y$ directions.
********************

## Video 2: Transformation Matrix

@Panopto(b176e183-a688-45c2-a1f8-b4db0130f629)

{{1}}
********************
**Quick check**

Why do we need a transformation matrix for an inclined 2D truss element?

<!-- data-solution-button="3" -->
[(X)] To relate displacement and force components in the element's local axes to those in the global axes.
[( )] To change the material's Young's modulus.
[( )] To add rotational degrees of freedom to a truss element.
********************

## Video 3: Transformation to Global System

@Panopto(db008595-6957-44a0-b248-b4db0130f603)

{{1}}
********************
**Quick check**

Three nodes each have two translational degrees of freedom. Before applying boundary conditions, what size is the global stiffness matrix?

<!-- data-solution-button="3" -->
[( )] $3\times3$
[( )] $4\times4$
[(X)] $6\times6$

[[?]] Count the total number of global displacement DOFs.
********************

## Video 4: Summary of the Finite Element Method

@Panopto(697729dd-10fd-4a77-85a6-b4db0130f5df)

{{1}}
********************
**Quick check**

At a node shared by two elements, what happens to their stiffness contributions in the global matrix?

<!-- data-solution-button="3" -->
[(X)] Contributions associated with the same global DOFs are added.
[( )] The contribution from the second element replaces the first.
[( )] The node receives a separate pair of global DOFs for each element.
********************

## ABAQUS: Introduction to CAE and 2D Truss Elements

<br>

**Learning Outcome 1.5.** Model a 2D truss structure using the finite element method and compare your results against hand calculations.

<br>

Work through the standalone tutorial:

@[course(Introduction to ABAQUS CAE: 2D truss elements)](../abaqus/Topic1/Truss2DCAE/Truss2DCAE.md)

Create the same two-element structure using an input file and ABAQUS CAE. Compare their displacement results with a hand calculation, and save both model files.

## Before class completion check

<br>

- [ ] **Quiz:** Complete the Blackboard Test for 2D Truss Elements in the Week 3 folder on the eLP. This counts towards your assessment.
- [ ] **Bring to class:** your notes, input and cae file, and any questions from the videos or tutorials.

**Note:** The 1D Truss Elements ABAQUS problem is also due before class this week. See the Week 2 folder on the eLP.