<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 0.0.1
mode: Presentation
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
        https://raw.githubusercontent.com/MINT-the-GAP/lia-annotation/main/README.md
        ../common/templates.md
comment: KB5034 Week 5 - Topic 2: beam elements, independent study before class.
-->

# Week 5: Beam Elements

@moduleTitle

**Topic 2: Bending & Beam Elements**

---

@[course(Return to Week 4)](../week04/week04.md)

---

## Topic Learning Outcomes

By the end of this week, students will be able to:

<br>

**2.3.** Describe the differences between beam elements and truss elements in terms of the number of nodes, degrees of freedom and the size of the stiffness matrix.

<br>

**2.4.** Analyse ABAQUS error messages and input files for beam element structures with concentrated and distributed loads.

<br>

**2.5.** Derive the stiffness matrix of a beam element by the unit displacement method (and by the method of virtual work — optional).

<br>

**2.6.** Compare the order of shape functions for beam and truss elements.

## A. INDEPENDENT STUDY: Before class

**PREPARATION STARTS HERE**

Watch the four required videos in order, read the shape-function pages, then complete the three ABAQUS tutorials. This week connects the beam mechanics from Week 4 to finite element models.

Take your own notes. [Download the partial notes](files/Week%205%20Online%20Videos.pdf), if you preder, to use with the unit-displacement and transformation videos. The notes also contain virtual-work material, which is optional.

The required shape-function explanation is provided in this lesson. You do **not** need to watch the virtual-work recordings to understand it.

Complete the quick checks before moving on. Bring your notes, calculations and model files to class.

## Video 1: Introduction to Beam Elements

@Panopto(82ef39ec-59f5-4725-b26b-b4ea014edf6b)

{{1}}
********************
**Quick check**

Why would a beam element be needed instead of a truss element for a cantilever carrying a transverse load?

<!-- data-solution-button="3" -->
[(X)] The model must represent bending and nodal rotations as well as axial deformation.
[( )] A truss element can represent the same bending behaviour if its area is increased.
[( )] Beam elements do not require material properties.
********************

## Video 2: Overview of Beam Elements

**Learning Outcome 2.3.** Describe the differences between beam and truss elements in terms of nodes, DOFs and stiffness-matrix size.

[Partial notes](files/Week%205%20Online%20Videos.pdf)

@Panopto(cbe8880d-2a09-45b4-899f-b4ea014ca070)

{{1}}
********************
**Quick check**

Complete the table for a **two-node planar element**. The beam here includes axial deformation as well as bending. Enter matrix sizes as `4x4`, `6x6`, etc.

<!--
data-solution-button="3"
data-type="none"
-->
| Element | Nodes | DOFs per node | Element stiffness matrix |
|:--|:--:|:--:|:--:|
| 2D truss | [[2]] | [[2]] | [[4x4]] |
| 2D beam, including axial deformation | [[2]] | [[3]] | [[6x6]] |

For the planar beam, the nodal DOFs are horizontal displacement $u$, vertical displacement $v$ and rotation about $z$.
********************

## Video 3: Unit Displacement Method

**Learning Outcome 2.5.** Derive the stiffness matrix of a beam element by the unit displacement method (and by the method of virtual work — optional).

In Week 4, we prescribed loads and calculated displacement. Here, we prescribe one nodal displacement or rotation, hold the other nodal displacement DOFs at zero, and calculate the forces and moments needed. These form one column of the stiffness matrix.

Follow one worked column to understand the method, then examine the completed matrix. You do not need to practise deriving the remaining columns.

[Partial notes](files/Week%205%20Online%20Videos.pdf)

@Panopto(27b57c31-0707-47cb-82a2-b4ea014ca0df)

{{1}}
********************
**Quick check**

How do we obtain column $j$ of an element stiffness matrix using the unit displacement method?

<!-- data-solution-button="3" -->
[( )] Apply a unit force at DOF $j$ and read off every displacement.
[(X)] Set displacement DOF $j$ to one, hold all other displacement DOFs at zero, and calculate the corresponding nodal forces and moments.
[( )] Set every nodal displacement to one at the same time.
********************

## Video 4: Transformation Matrix

[Partial notes](files/Week%205%20Online%20Videos.pdf)

@Panopto(9bdecd87-2e6e-4125-8803-b4ea014ca0a9)

{{1}}
********************
**Quick check**

For a planar beam element rotated within the $x$–$y$ plane, which statement is correct?

<!-- data-solution-button="3" -->
[( )] The rotational DOF is removed during transformation.
[( )] The Young’s modulus changes with the element angle.
[(X)] The translational components are transformed between local and global axes; rotation about the common $z$ axis is unchanged.
********************

## Shape Functions: Displacement Between Nodes

**Learning Outcome 2.6.** Compare the order of shape functions for beam and truss elements.

The FE solution gives displacement values **at the nodes**. Shape functions use those values to describe displacement **between the nodes**. This is called **interpolation**.

For a two-node truss element, we assume a **linear** axial displacement function:

$$u(x)=a+bx.$$

Take $x=0$ at node 1 and $x=L$ at node 2. The function must match the displacement at each node:

$$u(0)=u_1=a + b0\quad\Rightarrow\quad a=u_1,$$

$$u(L)=u_2=u_1+bL\quad\Rightarrow\quad b=\frac{u_2-u_1}{L}.$$

Substitute these coefficients into the straight-line equation:

$$u(x)=u_1+\frac{u_2-u_1}{L}x.$$

Collecting the terms multiplying each nodal displacement gives:

$$u(x)=\left(1-\frac{x}{L}\right)u_1+\frac{x}{L}u_2.$$

The two weighting functions are the **shape functions**:

$$N_1(x)=1-\frac{x}{L},\qquad N_2(x)=\frac{x}{L}.$$

So we can write $u(x)=N_1(x)u_1+N_2(x)u_2$. At node 1, $N_1=1$ and $N_2=0$; at node 2, $N_1=0$ and $N_2=1$. The interpolation therefore reproduces both nodal values exactly.

{{1}}
********************
**Quick check**

What order are these shape functions?

<!-- data-solution-button="3" -->
[(X)] First order (linear).
[( )] Second order (quadratic).
[( )] Third order (cubic).
********************

## Shape Functions: Why Beam Bending Uses a Cubic

A beam can curve between its nodes. Its bending shape must match **both displacement and rotation at each end**.

For small slopes, rotation is $\phi\approx dv/dx$. There are four end conditions:

$$v(0)=v_1,\qquad v'(0)=\phi_1,\qquad v(L)=v_2,\qquad v'(L)=\phi_2.$$

A cubic polynomial has four coefficients, which allows us to satisfy these four conditions:

$$v(x)=a+bx+cx^2+dx^3.$$

Differentiate to obtain the slope:

$$\frac{dv}{dx}=b+2cx+3dx^2.$$

**Apply the conditions at node 1, where $x=0$**

$$v(0)=v_1\quad\Rightarrow\quad a=v_1,$$

$$v'(0)=\phi_1\quad\Rightarrow\quad b=\phi_1.$$

Therefore:

$$v(x)=v_1+\phi_1x+cx^2+dx^3.$$

**Apply the conditions at node 2, where $x=L$**

$$v_2=v_1+\phi_1L+cL^2+dL^3,$$

$$\phi_2=\phi_1+2cL+3dL^2.$$

Rearrange these as two equations for the remaining coefficients $c$ and $d$:

$$cL^2+dL^3=v_2-v_1-\phi_1L,\tag{1}$$

$$2cL+3dL^2=\phi_2-\phi_1.\tag{2}$$

Multiply equation (2) by $L$ and subtract twice equation (1) to eliminate $c$:

$$dL^3=2(v_1-v_2)+L(\phi_1+\phi_2).$$

Hence:

$$d=\frac{2(v_1-v_2)}{L^3}+\frac{\phi_1+\phi_2}{L^2}.$$

Substitute this into equation (1) to find $c$:

$$cL^2=3(v_2-v_1)-L(2\phi_1+\phi_2),$$

$$c=\frac{3(v_2-v_1)}{L^2}-\frac{2\phi_1+\phi_2}{L}.$$

**Collect the terms multiplying each nodal value**

Substituting all four coefficients into $v(x)=a+bx+cx^2+dx^3$ gives:

$$
\begin{aligned}
v(x)={}&\left(1-\frac{3x^2}{L^2}+\frac{2x^3}{L^3}\right)v_1\\
&+\left(x-\frac{2x^2}{L}+\frac{x^3}{L^2}\right)\phi_1\\
&+\left(\frac{3x^2}{L^2}-\frac{2x^3}{L^3}\right)v_2\\
&+\left(-\frac{x^2}{L}+\frac{x^3}{L^2}\right)\phi_2.
\end{aligned}
$$

As with the truss, the expressions multiplying the nodal values are the **shape functions**. We can therefore write:

$$v(x)=N_1(x)v_1+N_2(x)\phi_1+N_3(x)v_2+N_4(x)\phi_2.$$

The four shape functions describe the contribution of each nodal displacement or rotation to the deflection along the element.

This expression describes **bending** and uses four nodal DOFs. Adding the two axial displacement DOFs gives the **six DOFs** of the full planar beam element discussed earlier.

{{1}}
********************
**Quick check**

Why is a straight-line interpolation generally insufficient for beam bending?

<!-- data-solution-button="3" -->
[( )] A straight line cannot connect two nodes.
[(X)] It cannot independently match the displacement and slope at both ends.
[( )] The beam's Young’s modulus changes along its length.
********************

## Shape Functions: What the Four Contributions Mean

The four beam bending shape functions are:

$$N_1(x)=1-\frac{3x^2}{L^2}+\frac{2x^3}{L^3},\qquad N_2(x)=x-\frac{2x^2}{L}+\frac{x^3}{L^2},$$

$$N_3(x)=\frac{3x^2}{L^2}-\frac{2x^3}{L^3},\qquad N_4(x)=-\frac{x^2}{L}+\frac{x^3}{L^2}.$$

- $N_1$ and $N_3$ describe the contributions from **nodal vertical displacement**.
- $N_2$ and $N_4$ describe the contributions from **nodal rotation**.

The actual deflection is the sum of all four contributions, scaled by the calculated nodal values.

The rotation functions $N_2$ and $N_4$ have units of length, so multiplying by a rotation gives a displacement.

These are the classical two-node Euler–Bernoulli beam bending functions. ABAQUS offers different beam formulations; the mesh-convergence tutorial compares linear and cubic elements.

{{1}}
********************
**Quick check**

Both end displacements are zero, but one end rotation is nonzero. Can the element have nonzero deflection between its nodes?

<!-- data-solution-button="3" -->
[(X)] Yes. The rotation shape function can produce a curve between the nodes.
[( )] No. Zero end displacements force the entire element to remain straight.
********************

## ABAQUS: Beam Elements

**Learning Outcome 2.4.** Analyse ABAQUS error messages and input files for beam structures with concentrated and distributed loads.

Work through the standalone tutorials in order:

1. @[course(Beam elements in ABAQUS)](../abaqus/Topic2/BeamElements/BeamElements.md)
2. @[course(Mesh convergence in ABAQUS)](../abaqus/Topic2/MeshConvergence/MeshConvergence.md)
3. @[course(Distributed loads in ABAQUS)](../abaqus/Topic2/DistributedLoads/DistributedLoads.md)

In the first tutorial, build the same cantilever using an input file and CAE. In the second, refine its mesh and compare linear and cubic beam formulations. In the third, apply a distributed line load with the correct units.

Save your input files and CAE models, and record your displacement results and any warnings or errors.

## Before class completion check

- [ ] I watched the four required videos: introduction, overview, unit displacement and transformation.
- [ ] I read the shape-function explanation and can describe the contributions of nodal displacement and rotation.
- [ ] I completed the required quick checks and made notes on the required material.
- [ ] I completed all three ABAQUS tutorials and saved my files.
- [ ] **Quiz:** Complete the Blackboard Beam Elements test in the Week 5 folder by **23:59 on the Wednesday before the session**.
- [ ] **Bring to class:** my notes, calculations, model files and any questions.

The Week 4 analytical beam-deflection problem is also due before this session. Check its Blackboard assignment for submission details.

**REQUIRED PREPARATION ENDS HERE**

The optional videos below are not needed to complete this preparation or the Week 5 quiz.

## Optional Further Study: Virtual Work

**Optional:** These recordings develop an alternative derivation of the stiffness matrix using virtual work. They are not required for the Week 5 preparation or quiz.

The required shape-function explanation above is self-contained. Continue here if you want to see how strain, interpolation and virtual work can be combined to obtain the stiffness matrix.

Work through the optional recordings in the following order. Start with the simpler truss example before extending the method to beams.

## Optional: Virtual Work for Trusses

[Partial notes](files/Week%205%20Online%20Videos.pdf)

@Panopto(8084dd87-7644-4213-89f6-b4ea014cb2d6)

This introduces the virtual-work method using the simpler axial strain relation for a truss.

## Optional: Virtual Work for Beams

[Partial notes](files/Week%205%20Online%20Videos.pdf)

@Panopto(3faecef3-79e8-45f8-af39-b4ea014cb4bb)

This introduces the steps for extending the virtual-work method to beam bending.

## Optional: Beam Shape-Function Derivation

[Shape-function partial notes](files/Beam%20Shape%20Functions%20-%20Partial%20Notes.pdf)

@Panopto(aeaf515d-e1c6-4d20-b96e-b4ea014cba18)

This derives the cubic interpolation and its four shape functions in full. The required lesson above explains their meaning without requiring this derivation.

## Optional: Strain–Displacement Matrix

[Shape-function partial notes](files/Beam%20Shape%20Functions%20-%20Partial%20Notes.pdf)

@Panopto(8b34b3ca-23ab-4826-8bc6-b4ea014cca0b)

This differentiates the displacement interpolation to obtain the strain–displacement matrix $B$.

## Optional: Stiffness Matrix by Virtual Work

[Shape-function partial notes](files/Beam%20Shape%20Functions%20-%20Partial%20Notes.pdf)

@Panopto(0bfe7a88-b7a2-44bb-bd35-b4ea014ca044)

This uses $B$ and virtual work to integrate the beam stiffness terms and recover the matrix obtained earlier by unit displacement.

## Further reading

@FurtherReading

@ReadingBook(@LoganBook,@LoganLibrary,```
- **Chapter 4:** Development of Beam Equations
```)
