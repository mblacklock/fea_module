<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 0.0.1
mode: Presentation
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
        https://raw.githubusercontent.com/MINT-the-GAP/lia-annotation/main/README.md
        ../common/templates.md
comment: KB5034 Week 10 - plane stress element formulation and ABAQUS modelling; pre-class preparation.

-->

# Week 10: Plane Stress Elements & ABAQUS Modelling

@moduleTitle

**Topic 3: 2D Stresses & Plane Stress Elements**

## Topic Learning Outcomes

By the end of this week, students will be able to:

**3.3. Derive** the stiffness matrix for plane stress elements.

**3.4. Determine** the appropriate meshing strategy for a 2D analysis in ABAQUS, taking into account the limitations of the elements in terms of shape functions and numerical integration.

## A. INDEPENDENT STUDY: Before class

**PREPARATION STARTS HERE**

Complete the **seven recordings in order** (approximately 31 minutes combined), then the **four ABAQUS tutorials** below.

Week 8 supplied the plane-stress material relationship, $\boldsymbol{\sigma}=\mathbf{D}\boldsymbol{\varepsilon}$. This week connects nodal displacements to strains and integrates their contribution to the element stiffness:

$$\mathbf{k}^{(e)}=t\int_{A^{(e)}}\mathbf{B}^{T}\mathbf{D}\mathbf{B}\,dA.$$

Follow the purpose of each step: interpolate displacement, calculate strain, map the element geometry, then integrate. Use the recordings for the derivations; the checks ask you to interpret those steps.

Bring your notes and the models you create to the lectorial.

## Video 1: Shape Functions — Formulation Overview

**Approximately 4 minutes.**

@Panopto(fde6acd8-b66c-4ab4-ad13-b50e00820006)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fde6acd8-b66c-4ab4-ad13-b50e00820006)

**Look for:** The virtual-work sequence: express strain using displacement derivatives, use shape functions to express displacement through nodal values, form $\mathbf{B}$, then integrate $t\mathbf{B}^{T}\mathbf{D}\mathbf{B}$ over the element area.

{{1}}
********************
**Quick check**

Why are shape functions needed before forming the element stiffness matrix?

<!-- data-solution-button="3" -->
[(X)] They express displacement within the element in terms of nodal displacement values.
[( )] They determine the material properties without a material model.
[( )] They specify the applied loads independently of the model.
****************************************
The interpolation connects the displacement field to the nodal unknowns. Differentiating it gives the strain–displacement relationship used in the stiffness integral.
****************************************
********************

## Video 2: Parametric Coordinates

**Approximately 3 minutes.**

@Panopto(d050ff26-dd17-4a85-aa5e-b50e0081ffe1)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d050ff26-dd17-4a85-aa5e-b50e0081ffe1)

**Look for:** How $\xi,\eta$ range from $-1$ to $+1$ in the reference element. Follow how the four nodal values lead to an interpolation containing $1$, $\xi$, $\eta$ and $\xi\eta$, rather than separate formulas for each physical element.

{{1}}
********************
**Quick check**

Why introduce parametric coordinates?

<!-- data-solution-button="3" -->
[(X)] To use a common reference element while mapping to the physical geometry.
[( )] To replace the material properties.
[( )] To remove the need for nodal coordinates.
****************************************
The reference coordinates describe position within an element. A mapping relates them to the physical $x,y$ coordinates; the geometry is still needed.
****************************************
********************

## Video 3: Shape Functions — Deriving the Interpolation

**Approximately 8 minutes.**

@Panopto(a46f5c32-40f6-45a8-9e96-b50e0082058b)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=a46f5c32-40f6-45a8-9e96-b50e0082058b)

**Look for:** How the four corner coordinates determine the interpolation coefficients, which are regrouped to obtain $N_1$ to $N_4$. The same shape functions describe geometry and displacement: this is the **isoparametric** approach. CPS4 functions are **bilinear**—linear in each reference coordinate separately.

{{1}}
********************
**Quick check**

What makes this element isoparametric?

<!-- data-solution-button="3" -->
[( )] Its physical sides must have equal length.
[(X)] The same shape functions interpolate both geometry and displacement.
[( )] Every point in the element has the same displacement.
****************************************
The geometry uses $x=\sum_iN_ix_i$ and $y=\sum_iN_iy_i$; displacement uses $u=\sum_iN_iu_i$ and $v=\sum_iN_iv_i$. The nodal values differ, but the interpolation functions are the same.
****************************************
********************

## Video 4: Visualisation of Shape Functions

**Approximately 2 minutes.**

@Panopto(e0cb219f-2b0b-4783-afa8-b50e008208dc)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=e0cb219f-2b0b-4783-afa8-b50e008208dc)

**Look for:** Why $N_1=1$ at node 1 and zero at the other nodes. Follow the shape-function plots and the property $N_1+N_2+N_3+N_4=1$ throughout the element.

{{1}}
********************
**Quick check**

Which statement about the shape functions is correct?

<!-- data-solution-button="3" -->
[( )] Each shape function equals one at every node.
[(X)] Each shape function equals one at its own node and zero at the other nodes.
[( )] All shape functions equal zero everywhere inside the element.
****************************************
This nodal property ensures that interpolation reproduces the prescribed nodal values. Their sum is one, so equal nodal displacements also give a constant displacement throughout the element.
****************************************
********************

## Video 5: Strain–Displacement Matrix

**Approximately 2 minutes.**

@Panopto(803ab0a8-a023-4163-ae8d-b50e00820e18)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=803ab0a8-a023-4163-ae8d-b50e00820e18)

**Look for:** How spatial derivatives of the displacement interpolation form $\mathbf{B}$, connecting nodal displacements to the strains used in the material relationship.

{{1}}
********************
**Quick check**

What does $\mathbf{B}$ do in $\boldsymbol{\varepsilon}=\mathbf{B}\mathbf{u}^{(e)}$?

<!-- data-solution-button="3" -->
[( )] It supplies the material stiffness.
[( )] It converts applied pressure directly into nodal forces.
[(X)] It converts the element nodal displacements into strain at the point considered.
****************************************
$\mathbf{B}$ contains spatial derivatives of the shape functions. The material matrix $\mathbf{D}$ then relates strain to stress.
****************************************
********************

## Video 6: Jacobian

**Approximately 5 minutes.**

@Panopto(e187e120-82c5-49c4-b307-b50e00820039)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=e187e120-82c5-49c4-b307-b50e00820039)

**Look for:** Why the stiffness integral is evaluated in $\xi,\eta$ coordinates, and why $\det\mathbf{J}$ is needed to recover the physical area. Follow how the Jacobian entries are calculated from the shape-function derivatives and nodal coordinates.

{{1}}
********************
**Quick check**

Why does the Jacobian determinant appear in the stiffness integral?

<!-- data-solution-button="3" -->
[(X)] It accounts for the change in area between reference and physical coordinates.
[( )] It is the material yield strength.
[( )] It specifies the applied load.
****************************************
The area transformation is $dA=\det\mathbf{J}\,d\xi\,d\eta$ for a correctly oriented mapping. A reference-coordinate area alone is not the physical area of the element.
****************************************
********************

## Video 7: Numerical Integration

**Approximately 6 minutes.**

@Panopto(e9e291eb-ba28-419f-9d38-b50e0082005f)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=e9e291eb-ba28-419f-9d38-b50e0082005f)

**Look for:** How Gauss integration replaces an integral with a weighted sum. Compare **CPS4** (two points per reference direction, four in total) with **CPS4R** (one central point), and why distorted elements complicate integration.

{{1}}
********************
**Quick check**

What is changed by using fewer integration points?

<!-- data-solution-button="3" -->
[( )] The number of displacement degrees of freedom at each node.
[(X)] The numerical evaluation of the stiffness integral.
[( )] The physical thickness of the plate.
****************************************
Integration points sample the integral; they are not extra mesh nodes. Reduced integration uses fewer sampling points, not fewer nodal unknowns. Its accuracy depends on the formulation and mesh, so it is not automatically less accurate in every problem.
****************************************
********************

## Plane Stress Modelling in ABAQUS

Complete these **four original tutorials in order**. The first two build the same plate using different workflows; the last two introduce symmetry and then improve the mesh around a hole.

Use the existing tutorial instructions. Save your input file and CAE models so that you can revisit them during class. The original PDFs use the older outcome label **4.4**; these tutorials support **3.4** here.

## Tutorial 1: Create a Plane Stress Model Using an Input File

Build the four-node plate model and connect its physical description to the input-file keywords.

**Pay attention to:** node ordering; two displacement degrees of freedom per node; node and element sets; plane-stress element type; thickness and material assignment; and the conversion of edge traction into equivalent nodal loads.

For this example use **$E=200$ GPa**, as shown in the tutorial figure and the matching CAE example: $200\,000\text{ N/mm}^2$ in an N–mm system. The input tutorial's opening paragraph contains a “200 MPa” typo.

[Open the original input-file tutorial (PDF)](../abaqus/Topic3/files/KB5034_Wk9_1_2D%20plane%20stress%20input.pdf)

## Tutorial 2: Create a Plane Stress Model in ABAQUS CAE

Create the same plate through the graphical interface and relate the CAE choices to the input-file model.

**Pay attention to:** the 2D planar part, plane-stress thickness, material and section assignment, pressure direction, and the full/reduced integration option when assigning the element type. Check the element code rather than accepting the default.

[Open the original CAE tutorial (PDF)](../abaqus/Topic3/files/KB5034_Wk9_2_2D%20plane%20stress%20CAE.pdf)

## Tutorial 3: Apply Symmetry Boundary Conditions

Use the symmetric geometry and loading to model a quarter of the plate. Add the boundary conditions representing the removed material.

**Pay attention to:** symmetry of geometry **and** loading/boundary conditions. At a symmetry cut, restrain displacement normal to the cut while allowing tangential displacement. Check that your reduced geometry represents the intended portion of the full plate.

[Open the original symmetry tutorial (PDF)](../abaqus/Topic3/files/KB5034_Wk9_3_SymmetryBCs.pdf)

## Tutorial 4: Partition a 2D Model to Aid Meshing

Continue with the quarter model. Partition the region around the hole to control mesh layout and concentrate refinement where the stress varies rapidly.

**Pay attention to:** element shape, local edge seeds, compatible seed counts for a swept mesh, and the difference between refining the whole model and refining the region around the hole. Compare the resulting stress distributions as directed in the tutorial.

[Open the original partitioning tutorial (PDF)](../abaqus/Topic3/files/KB5034_Wk9_4_Partitioning.pdf)

## Before-class Completion Check

- [ ] I can explain how shape functions use nodal values to interpolate displacement.
- [ ] I can distinguish reference/parametric coordinates from physical coordinates.
- [ ] I can explain how $\mathbf{B}$ relates nodal displacements to strain.
- [ ] I can explain how the Jacobian relates the physical and reference coordinates and why its determinant appears in the area integral.
- [ ] I can explain why numerical integration uses weighted values at integration points.
- [ ] I have created the plane-stress plate using both an input file and ABAQUS CAE, checking thickness, loads and element type.
- [ ] I can identify symmetry cuts and apply the corresponding displacement constraints.
- [ ] I have used partitioning and local seeds to improve the mesh around a hole.

Bring your notes, saved models and any questions to the lectorial.
