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

Complete the **seven recordings in order** (approximately 30 minutes combined), then the **four ABAQUS tutorials** below.

Week 8 supplied the plane-stress material relationship, $\boldsymbol{\sigma}=\mathbf{D}\boldsymbol{\varepsilon}$. This week connects nodal displacements to strains and integrates their contribution to the element stiffness:

$$\mathbf{k}^{(e)}=t\int_{A^{(e)}}\mathbf{B}^{T}\mathbf{D}\mathbf{B}\,dA.$$

Follow the purpose of each step: interpolate displacement, calculate strain, map the element geometry, then integrate. Use the recordings for the derivations; the checks ask you to interpret those steps.

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
[( )] They interpolate strain directly from nodal strain values.
[( )] They relate nodal forces directly to strain without a displacement field.
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
[( )] To make every physical element a square with sides of length two.
[( )] To use reference-coordinate derivatives directly as physical-coordinate derivatives.
****************************************
The reference coordinates describe position within an element. A mapping relates them to the physical $x,y$ coordinates without changing the physical shape. Derivatives must also be transformed between the two coordinate systems.
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
[( )] The physical element must have the same square shape as the reference element.
[(X)] The same shape functions interpolate both geometry and displacement.
[( )] Geometry uses bilinear shape functions, but displacement uses a higher-order interpolation.
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
[( )] Each shape function equals one quarter throughout the element.
[(X)] Each shape function equals one at its own node and zero at the other nodes.
[( )] The shape functions sum to one only at the nodes.
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
[( )] It converts strain into stress at the point considered.
[( )] It interpolates displacement at the point considered from nodal displacements.
[(X)] It converts the element nodal displacements into strain at the point considered.
****************************************
$\mathbf{B}$ contains spatial derivatives of the shape functions, so it gives strain rather than displacement. The shape functions interpolate displacement; the material matrix $\mathbf{D}$ relates strain to stress.
****************************************
********************

## Video 6: Jacobian

**Approximately 5 minutes.**

@Panopto(e187e120-82c5-49c4-b307-b50e00820039)

[Open the recording in Panopto](https://northumbria.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=e187e120-82c5-49c4-b307-b50e00820039)

**Look for:** Both roles of the Jacobian: transforming shape-function derivatives from parametric to physical coordinates when forming $\mathbf{B}$, and transforming the area integral using $\det\mathbf{J}$. Follow how its entries are calculated from the shape-function derivatives and nodal coordinates.

{{1}}
********************
**Quick check**

Why does the Jacobian determinant appear in the stiffness integral?

<!-- data-solution-button="3" -->
[(X)] It accounts for the change in area between reference and physical coordinates.
[( )] It multiplies each parametric shape-function derivative to give its physical derivative.
[( )] It supplies the Gauss integration weights, replacing the quadrature weights.
****************************************
The area transformation is $dA=\det\mathbf{J}\,d\xi\,d\eta$ for a correctly oriented mapping. Separately, the inverse Jacobian transforms parametric shape-function derivatives into physical derivatives when forming $\mathbf{B}$. The determinant scales area; it does not replace that derivative transformation or the Gauss weights.
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
[( )] The order of the displacement interpolation within the element.
****************************************
Integration points sample the integral; they are not extra mesh nodes. Reduced integration uses fewer sampling points, not fewer nodal unknowns. Its accuracy depends on the formulation and mesh, so it is not automatically less accurate in every problem.
****************************************
********************

## Plane Stress Modelling in ABAQUS

Complete these **four tutorials in order**. The first two build the same plate using different workflows; the last two introduce symmetry and improve the mesh around a hole. Save your input file and CAE models as you work.

| Tutorial | Focus |
|:--|:--|
| **1. [Create a plane-stress model using an input file](../abaqus/Topic3/files/KB5034_Wk9_1_2D%20plane%20stress%20input.pdf)** | Connect the plate description to the keywords. Check node ordering, sets, plane-stress section/thickness and equivalent nodal loads. |
| **2. [Create the model in ABAQUS CAE](../abaqus/Topic3/files/KB5034_Wk9_2_2D%20plane%20stress%20CAE.pdf)** | Relate the graphical workflow to the input file. Check material/section assignment, pressure direction and the full/reduced integration element code. |
| **3. [Apply symmetry boundary conditions](../abaqus/Topic3/files/KB5034_Wk9_3_SymmetryBCs.pdf)** | Model a quarter plate only when geometry, loading and constraints permit it. Restrain displacement normal to each symmetry cut; leave tangential displacement free. |
| **4. [Partition a 2D model to aid meshing](../abaqus/Topic3/files/KB5034_Wk9_4_Partitioning.pdf)** | Partition around the hole, control local seeds and element shape, and compare stress distributions. Check compatible seed counts for a swept mesh. |

**Material value:** use $E=200$ GPa ($200\,000\text{ N/mm}^2$ in an N–mm system). The input-file tutorial's opening paragraph contains a “200 MPa” typo; its figure and the CAE example give 200 GPa.

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
