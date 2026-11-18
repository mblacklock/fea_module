<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 1.0.1
mode: Presentation
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
        https://raw.githubusercontent.com/MINT-the-GAP/lia-annotation/main/README.md
        ../common/templates.md
comment: KB5034 Week 8 - Topic 3: multiaxial stress, strain and plane stress; before-class and in-class study.
-->

# Week 8: 2D Stresses & Plane Stress Elements

@moduleTitle

**Topic 3: 2D Stresses & Plane Stress Elements**

## Topic Learning Outcome

By the end of this week, students will be able to:

<br>

**3.1. Recognise** when the plane stress formulation is applicable to simplify the analysis of plate structures.

## A. INDEPENDENT STUDY: Before class

**PREPARATION STARTS HERE**

So far, we have considered axial stress, bending stress and shear stress in torsion. We will now describe stresses acting in several directions and relate them to the resulting strains.

Make notes on:

- Poisson's ratio and lateral deformation.
- Normal and shear stress components.
- When a three-dimensional stress state can be simplified to **plane stress**.
- The stress–strain relationships for a linearly elastic material in plane stress.

Bring your notes and a calculator to class. We will apply these relationships to numerical problems and begin the analytical problem for this week.

## Reminder: Axial Stress and Strain

An axial tensile force extends a bar. Engineering strain compares the change in length with the **original length**:

![Axial loading and change in length](images/PlaneStress_Week08_img01_AxialDeformation.svg)<!-- style="width: 75%; display: block; margin: auto;" -->

$$
\sigma_x=\frac{P}{A},\qquad
\varepsilon_x=\frac{\delta}{L}.
$$

For uniaxial loading in the linear elastic range:

$$\sigma_x=E\varepsilon_x,\qquad \delta=\frac{PL}{EA}.$$

Tensile normal stress and extension are **positive**. Compressive normal stress and shortening are **negative**.

{{1}}
********************
**Quick check**

A bar extends by $0.02\text{ mm}$ from an original length of $100\text{ mm}$. What is its axial strain? Enter a decimal value.

[[0.0002]]
****************************************
$$\varepsilon_x=\frac{0.02}{100}=0.0002.$$

Strain is a ratio of lengths, so it is dimensionless.
****************************************
********************

## Poisson's Ratio

When a bar is stretched, it usually becomes **longer in the loading direction** and **narrower perpendicular to it**. Compression usually produces the opposite behaviour.

![Axial extension accompanied by lateral contraction](images/PlaneStress_Week08_img02_PoissonContraction.svg)<!-- style="width: 80%; display: block; margin: auto;" -->

Poisson's ratio, $\nu$, relates lateral strain to axial strain in a uniaxial test:

$$\boxed{\nu=-\frac{\text{lateral strain}}{\text{axial strain}}.}$$

For an isotropic material loaded only in $x$:

$$\nu=-\frac{\varepsilon_y}{\varepsilon_x}
=-\frac{\varepsilon_z}{\varepsilon_x},\qquad
\varepsilon_y=\varepsilon_z=-\nu\varepsilon_x.$$

An **isotropic** material has the same elastic properties in every direction. We use a homogeneous, isotropic, linearly elastic material throughout this module.

The minus sign gives a positive $\nu$ when tensile axial strain produces negative lateral strain. Poisson's ratio is **dimensionless**.

**Typical values**

<!-- data-type="none" -->
| Material | Typical Poisson's ratio, $\nu$ |
|:--|:--:|
| Steel | 0.27–0.30 |
| Aluminium | 0.33 |
| Concrete | 0.20 |
| Glass | 0.24–0.29 |
| Rubber | 0.48–approximately 0.50 |
| Cork | Approximately 0 |

These are approximate reference values and vary with the particular material. **Use the value specified in each problem.**

Source: [Altair Radioss documentation — Poisson's ratio](https://2023.help.altair.com/2023/hwsolvers/rad/topics/solvers/rad/poissons_ratio_definitions_r.htm).

{{1}}
********************
**Quick check**

A steel bar has axial strain $\varepsilon_x=0.001$ and Poisson's ratio $\nu=0.30$. What is its lateral strain $\varepsilon_y$? Include the sign.

[[-0.0003]]
****************************************
$$\varepsilon_y=-\nu\varepsilon_x=-0.30(0.001)=-0.0003.$$

The negative sign represents lateral contraction. The change in width is $\delta_y=\varepsilon_y b$, where $b$ is the original width.
****************************************
********************

## Building the Normal Stress–Strain Equations

A **normal stress** acts perpendicular to a face. We will first build the equations in two dimensions by applying one stress at a time, then adding the strain contributions.

Assume small deformations of a homogeneous, isotropic, linearly elastic material with positive Poisson's ratio. The diagrams show the original square dashed and the deformed shape shaded.

{{0-1}}
********************
<div style="display: flex; gap: 1.5rem; align-items: center; flex-wrap: wrap;">
<div style="flex: 3; min-width: 18rem;">

![A square extended in x and contracted in y by tensile stress in x](images/PlaneStress_Week08_img03_UniaxialX.svg)<!-- style="width: 100%; display: block; margin: auto;" -->

</div>
<div style="flex: 2; min-width: 16rem;">

**1. Apply $\sigma_x$ only**

The element extends in $x$:

$$\varepsilon_x=\frac{\sigma_x}{E}.$$

It contracts in $y$ through the Poisson effect:

$$\varepsilon_y=-\nu\varepsilon_x
=-\frac{\nu\sigma_x}{E}.$$

The minus sign represents **contraction transverse to a tensile stress**. There is strain in $y$ even though $\sigma_y=0$.

</div>
</div>
********************

{{1-2}}
********************
<div style="display: flex; gap: 1.5rem; align-items: center; flex-wrap: wrap;">
<div style="flex: 3; min-width: 18rem;">

![A square extended in y and contracted in x by tensile stress in y](images/PlaneStress_Week08_img04_UniaxialY.svg)<!-- style="width: 100%; display: block; margin: auto;" -->

</div>
<div style="flex: 2; min-width: 16rem;">

**2. Apply $\sigma_y$ only**

Now start again from the original square and load it in $y$. It extends in $y$:

$$\varepsilon_y=\frac{\sigma_y}{E}.$$

The Poisson effect makes it contract in $x$:

$$\varepsilon_x=-\nu\varepsilon_y
=-\frac{\nu\sigma_y}{E}.$$

This gives the **negative contribution to $\varepsilon_x$** that we will need when both stresses act.

</div>
</div>
********************

{{2-3}}
********************
<div style="display: flex; gap: 1.5rem; align-items: center; flex-wrap: wrap;">
<div style="flex: 3; min-width: 18rem;">

![Combined x and y tensile loading of the same square](images/PlaneStress_Week08_img05_CombinedNormalStresses.svg)<!-- style="width: 100%; display: block; margin: auto;" -->

</div>
<div style="flex: 2; min-width: 16rem;">

**3. Apply both stresses**

For small, linear-elastic deformation, **add the strain contributions** from the two loading cases:

$$\boxed{\varepsilon_x=
\underbrace{\frac{\sigma_x}{E}}_{\text{direct extension}}
-\underbrace{\frac{\nu\sigma_y}{E}}_{\text{Poisson contraction}}.}$$

$$\boxed{\varepsilon_y=
-\underbrace{\frac{\nu\sigma_x}{E}}_{\text{Poisson contraction}}
+\underbrace{\frac{\sigma_y}{E}}_{\text{direct extension}}.}$$

Each strain therefore depends on **both normal stresses**. In each direction, one stress acts directly and the other produces a lateral Poisson effect.

</div>
</div>

For illustration, the diagram uses **equal tensile stresses**, so both net strains are positive. With unequal stresses, the balance between direct and Poisson contributions determines whether a particular direction extends or contracts. Deformations are shown schematically.
********************

{{3}}
********************
**4. Extend the same reasoning to three dimensions**

![Normal stresses on the three visible faces of an isometric material element](images/PlaneStress_Week08_img06_NormalStresses.svg)<!-- style="width: 60%; display: block; margin: auto;" -->

The three normal stress components are $\sigma_x$, $\sigma_y$ and $\sigma_z$. The diagram omits the opposite-face stresses for clarity.

For strain in $x$, $\sigma_x$ acts directly. Both $\sigma_y$ and $\sigma_z$ act transversely and therefore contribute Poisson terms:

$$\boxed{\varepsilon_x=\frac{\sigma_x}{E}
-\frac{\nu\sigma_y}{E}-\frac{\nu\sigma_z}{E}.}$$

The same reasoning gives:

$$\varepsilon_y=\frac{\sigma_y}{E}-\frac{\nu\sigma_x}{E}-\frac{\nu\sigma_z}{E},$$

$$\varepsilon_z=\frac{\sigma_z}{E}-\frac{\nu\sigma_x}{E}-\frac{\nu\sigma_y}{E}.$$

The minus signs describe the **Poisson contributions**, not a rule that the resulting strains must be negative. Use the signs of the applied stresses: a compressive transverse stress gives a positive lateral contribution.
********************

{{4}}
********************
**Quick check**

If $\sigma_x=0$ but $\sigma_y$ is tensile and $\sigma_z=0$, must $\varepsilon_x$ be zero?

<!-- data-solution-button="3" -->
[( )] Yes, because there is no normal stress in $x$.
[(X)] No. The Poisson effect produces strain in $x$.
****************************************
$$\varepsilon_x=-\frac{\nu\sigma_y}{E}.$$

For positive $\nu$, the material contracts in $x$ even though $\sigma_x=0$.
****************************************
********************

## Shear Stress and Shear Strain

A **shear stress** acts along a face. We use the first subscript for the direction normal to the face and the second for the direction of the stress along that face. Thus, $\tau_{xy}$ acts on an $x$ face in the $y$ direction.

![Full three-dimensional stress state on an isometric material element](images/PlaneStress_Week08_img07_FullStressState.svg)<!-- style="width: 80%; display: block; margin: auto;" -->

The blue arrows show normal stresses; the teal arrows show shear stresses. Each visible face carries one normal component and two shear components. All arrows show the positive component directions; opposite-face stresses are omitted for clarity.

Moment equilibrium requires the complementary shear stresses to have equal values:

$$\tau_{xy}=\tau_{yx},\qquad
\tau_{yz}=\tau_{zy},\qquad
\tau_{zx}=\tau_{xz}.$$

A general three-dimensional stress state therefore has **six independent components**: three normal stresses and three shear stresses.

As in torsion, engineering shear strain $\gamma$ describes the change in an initially right angle. In the linear elastic range:

$$\tau_{xy}=G\gamma_{xy},\qquad
G=\frac{E}{2(1+\nu)}.$$

Hence:

$$\gamma_{xy}=\frac{2(1+\nu)}{E}\tau_{xy}.$$

Engineering shear strain is measured in radians. Use $E$, $G$ and stress in consistent units.

{{1}}
********************
**Quick check**

Which statement describes a shear stress?

<!-- data-solution-button="3" -->
[( )] It acts perpendicular to a face.
[(X)] It acts along a face.
[( )] It is the change in length divided by original length.
********************

## When Can We Use Plane Stress?

We can often simplify a **thin plate loaded in its own plane** to a plane-stress model. Let $x$ and $y$ lie in the plate and $z$ run through its thickness.

![Upright thin plate with in-plane forces and a local stress element](images/PlaneStress_Week08_img08_ThinPlate.svg)<!-- style="width: 75%; display: block; margin: auto;" -->

The red arrows show applied forces acting in the plate's mid-plane. The small element on the face shows the in-plane normal and shear stress components.

The approximation is appropriate when:

- The thickness is small compared with the in-plane dimensions.
- The broad faces are free of applied traction.
- Loading acts in the plane of the plate, without significant out-of-plane bending.
- Through-thickness constraints and local load or support effects do not create significant out-of-plane stresses in the region being considered.

We then take:

$$\boxed{\sigma_z=0,\qquad \tau_{xz}=0,\qquad \tau_{yz}=0.}$$

The retained components are $\sigma_x$, $\sigma_y$ and $\tau_{xy}$. For the plate models in this topic, we also use a constant thickness $t$.

{{1}}
********************
**Quick check**

Which situation is the best candidate for a plane-stress model?

<!-- data-solution-button="3" -->
[(X)] A thin, flat plate pulled along its edges, with its broad faces free.
[( )] A thick block compressed on all six faces.
[( )] A thin plate carrying a load perpendicular to its broad face and bending substantially.
****************************************
The first case has thin geometry and in-plane loading. Thin geometry alone is insufficient: the loading and constraints must also support the plane-stress assumption.
****************************************
********************

## Stress–Strain Relationships for Plane Stress

Set $\sigma_z=0$ in the general normal-strain equations. Together with the shear relationship, this gives:

![The retained in-plane normal and shear stresses](images/PlaneStress_Week08_img09_PlaneStressElement.svg)<!-- style="width: 65%; display: block; margin: auto;" -->

$$\boxed{\varepsilon_x=\frac{\sigma_x-\nu\sigma_y}{E},\qquad
\varepsilon_y=\frac{\sigma_y-\nu\sigma_x}{E},\qquad
\gamma_{xy}=\frac{\tau_{xy}}{G}
=\frac{2(1+\nu)}{E}\tau_{xy}.}$$

**Zero stress does not necessarily mean zero strain.** The plate can still change thickness through the Poisson effect:

$$\boxed{\varepsilon_z=-\frac{\nu}{E}(\sigma_x+\sigma_y).}$$

Plane stress sets the out-of-plane **stresses** to zero; it does not set $\varepsilon_z$ to zero.

{{1}}
********************
**Quick check**

A plate is in plane stress with $\sigma_x>0$, $\sigma_y>0$ and $\nu>0$. What happens to its thickness?

<!-- data-solution-button="3" -->
[( )] It must stay unchanged because $\sigma_z=0$.
[(X)] It decreases because $\varepsilon_z<0$.
[( )] It increases because both in-plane stresses are tensile.
****************************************
Both tensile in-plane normal stresses contribute to contraction through the thickness:

$$\varepsilon_z=-\frac{\nu}{E}(\sigma_x+\sigma_y)<0.$$
****************************************
********************

## Writing the Relationships as a Matrix

The individual plane-stress equations are:

$$
\begin{aligned}
\varepsilon_x&=\frac{\sigma_x-\nu\sigma_y}{E},\\[0.5em]
\varepsilon_y&=\frac{\sigma_y-\nu\sigma_x}{E},\\[0.5em]
\gamma_{xy}&=\frac{2(1+\nu)}{E}\tau_{xy}.
\end{aligned}
$$

Collect the terms in the column order $\sigma_x$, $\sigma_y$, $\tau_{xy}$:

$$
\begin{alignedat}{4}
\varepsilon_x&={} &\frac{1}{E}\sigma_x &{}-{} &\frac{\nu}{E}\sigma_y &{}+{} &0\tau_{xy} &\\[0.5em]
\varepsilon_y&={} &-\frac{\nu}{E}\sigma_x &{}+{} &\frac{1}{E}\sigma_y &{}+{} &0\tau_{xy} &\\[0.5em]
\gamma_{xy}&={} &0\sigma_x &{}+{} &0\sigma_y &{}+{} &\frac{2(1+\nu)}{E}\tau_{xy} &.
\end{alignedat}
$$

Each equation becomes one row of the matrix:

$$
\underbrace{\begin{bmatrix}\varepsilon_x\\\varepsilon_y\\\gamma_{xy}\end{bmatrix}}_{\boldsymbol{\varepsilon}}
=
\underbrace{\frac{1}{E}\begin{bmatrix}
1&-\nu&0\\
-\nu&1&0\\
0&0&2(1+\nu)
\end{bmatrix}}_{\mathbf C}
\underbrace{\begin{bmatrix}\sigma_x\\\sigma_y\\\tau_{xy}\end{bmatrix}}_{\boldsymbol{\sigma}}.
$$

This is the same set of equations written as $\boldsymbol{\varepsilon}=\mathbf C\boldsymbol{\sigma}$. The **compliance matrix**, $\mathbf C$, converts stresses into strains.

{{1}}
********************
To calculate stress from strain, multiply both sides by the inverse of the compliance matrix:

$$\mathbf C^{-1}\boldsymbol{\varepsilon}
=\mathbf C^{-1}\mathbf C\boldsymbol{\sigma}
=\boldsymbol{\sigma}.$$

Hence:

$$\boldsymbol{\sigma}=\mathbf C^{-1}\boldsymbol{\varepsilon}
=\mathbf D\boldsymbol{\varepsilon},\qquad
\mathbf D=\mathbf C^{-1}.$$

Taking the inverse gives:

$$
\underbrace{\begin{bmatrix}\sigma_x\\\sigma_y\\\tau_{xy}\end{bmatrix}}_{\boldsymbol{\sigma}}
=
\underbrace{\frac{E}{1-\nu^2}\begin{bmatrix}
1&\nu&0\\
\nu&1&0\\
0&0&\dfrac{1-\nu}{2}
\end{bmatrix}}_{\mathbf D}
\underbrace{\begin{bmatrix}\varepsilon_x\\\varepsilon_y\\\gamma_{xy}\end{bmatrix}}_{\boldsymbol{\varepsilon}}.
$$

Here, $\mathbf D=\mathbf C^{-1}$ is the **stress–strain matrix**. We will use it later when constructing the stiffness matrix for a plane-stress finite element.

The final diagonal term, including the factor outside the matrix, is:

$$\frac{E}{1-\nu^2}\frac{1-\nu}{2}
=\frac{E}{2(1+\nu)}=G.$$

Thus the last row still gives $\tau_{xy}=G\gamma_{xy}$.
********************

{{2}}
********************
**Quick check**

Which statement explains the $-\nu$ terms in the compliance matrix?

<!-- data-solution-button="3" -->
[(X)] A normal stress in one direction produces lateral strain in the other direction.
[( )] Normal stress is always negative.
[( )] Normal stress produces engineering shear strain in this material.
********************

{{3}}
********************
**General three-dimensional form**

For the same homogeneous, isotropic, linearly elastic material, the full compliance relationship is:

$$
\underbrace{\begin{bmatrix}
\varepsilon_x\\\varepsilon_y\\\varepsilon_z\\\gamma_{xy}\\\gamma_{yz}\\\gamma_{zx}
\end{bmatrix}}_{\boldsymbol{\varepsilon}}
=
\underbrace{\frac{1}{E}\begin{bmatrix}
1&-\nu&-\nu&0&0&0\\
-\nu&1&-\nu&0&0&0\\
-\nu&-\nu&1&0&0&0\\
0&0&0&2(1+\nu)&0&0\\
0&0&0&0&2(1+\nu)&0\\
0&0&0&0&0&2(1+\nu)
\end{bmatrix}}_{\mathbf C}
\underbrace{\begin{bmatrix}
\sigma_x\\\sigma_y\\\sigma_z\\\tau_{xy}\\\tau_{yz}\\\tau_{zx}
\end{bmatrix}}_{\boldsymbol{\sigma}}.
$$

The first three rows contain the direct and Poisson contributions. The final three rows give the engineering shear strains, $\gamma=\tau/G$.

Taking the inverse gives the **stress–strain matrix**, $\mathbf D=\mathbf C^{-1}$:

$$
\underbrace{\begin{bmatrix}
\sigma_x\\\sigma_y\\\sigma_z\\\tau_{xy}\\\tau_{yz}\\\tau_{zx}
\end{bmatrix}}_{\boldsymbol{\sigma}}
=
\underbrace{\frac{E}{(1+\nu)(1-2\nu)}\begin{bmatrix}
1-\nu&\nu&\nu&0&0&0\\
\nu&1-\nu&\nu&0&0&0\\
\nu&\nu&1-\nu&0&0&0\\
0&0&0&\dfrac{1-2\nu}{2}&0&0\\
0&0&0&0&\dfrac{1-2\nu}{2}&0\\
0&0&0&0&0&\dfrac{1-2\nu}{2}
\end{bmatrix}}_{\mathbf D}
\underbrace{\begin{bmatrix}
\varepsilon_x\\\varepsilon_y\\\varepsilon_z\\\gamma_{xy}\\\gamma_{yz}\\\gamma_{zx}
\end{bmatrix}}_{\boldsymbol{\varepsilon}}.
$$

Including the factor outside the matrix, each shear diagonal entry is $G=E/[2(1+\nu)]$. The strain vector uses **engineering shear strains** $\gamma$, as in the plane-stress equations above.
********************

## Before-class Completion Check

- [ ] I can use Poisson's ratio to relate axial and lateral strains.
- [ ] I can distinguish normal stress from shear stress.
- [ ] I can identify the three stress components retained in a plane-stress model.
- [ ] I can explain when the plane-stress approximation is appropriate.
- [ ] I understand why $\sigma_z=0$ does not imply $\varepsilon_z=0$.
- [ ] I can use the plane-stress equations to relate stress and strain.

Bring any questions to class. We will use these ideas to solve numerical stress–strain problems.

## B. IN-CLASS STUDY: Multiaxial Stress and Plane Stress

**LECTORIAL STARTS HERE**

We will use the stress–strain relationships to calculate deformation, decide when plane stress is an appropriate approximation and begin the analytical problem for this week.

Show the equations, substitutions and units in your notes. Worked solutions will be released after class in dropdowns so that you can return to them for revision.

## Retrieval: Stress, Strain and Plane Stress

**1. An isotropic bar is pulled in $x$ and is free to expand and contract laterally. For positive Poisson's ratio, what happens in $y$?**

<!-- data-solution-button="3" -->
[( )] It extends.
[(X)] It contracts.
[( )] Its length in $y$ cannot change because $\sigma_y=0$.

{{1}}
********************
**2. Which components are retained in an $x$–$y$ plane-stress model?**

<!-- data-solution-button="3" -->
[(X)] $\sigma_x$, $\sigma_y$ and $\tau_{xy}$.
[( )] $\sigma_x$, $\sigma_y$ and $\sigma_z$.
[( )] $\varepsilon_x$, $\varepsilon_y$ and $\varepsilon_z$.
********************

{{2}}
********************
**3. In plane stress, must the thickness remain unchanged?**

<!-- data-solution-button="3" -->
[( )] Yes, because $\sigma_z=0$.
[(X)] No. In-plane normal stresses can produce through-thickness strain.
********************

## Problem: Measuring Elastic Properties

A circular rod is subjected to an axial tensile load. The measured extension and reduction in diameter are given below. Assume uniform uniaxial stress in the gauge length and small, linear-elastic deformation.

![Tensile specimen with axial and lateral measurements](images/PlaneStress_Week08_img10_PoissonProblem.svg)<!-- style="width: 80%; display: block; margin: auto;" -->

<!-- data-type="none" -->
| Quantity | Symbol | Value |
|:--|:--:|:--|
| Original gauge length | $L$ | 500 mm |
| Original radius | $r$ | 8 mm |
| Tensile force | $P$ | 12 kN |
| Axial extension | $\delta_x$ | 300 μm |
| Change in diameter | $\Delta d$ | −2.4 μm |

Determine **Young's modulus** and **Poisson's ratio**. Use the original dimensions when calculating the engineering strains.

**Check your answers**

Enter numerical values only. Give $E$ in **GPa** to at least three significant figures; $\nu$ is dimensionless.

**Young's modulus, $E$ (GPa):**

<!-- data-solution-button="3" -->
[[99.47]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - 12000 / (Math.PI * 8 * 8) / (0.300 / 500) / 1000) <= 0.05
</script>
****************************************
Correct. Your Young's modulus is consistent with the measured axial extension.
****************************************

**Poisson's ratio, $\nu$:**

<!-- data-solution-button="3" -->
[[0.25]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - 0.25) <= 0.0005
</script>
****************************************
Correct. Your Poisson's ratio is consistent with the measured axial and lateral strains.
****************************************

<div class="post-class-solution">
<details>
<summary><strong>Reveal worked solution</strong></summary>

The original diameter is $d=2r=16\text{ mm}$, and the cross-sectional area is:

$$A=\pi r^2=\pi(8)^2=201.06\text{ mm}^2.$$

Convert the measured changes to mm:

$$\delta_x=0.300\text{ mm},\qquad \Delta d=-0.0024\text{ mm}.$$

The axial stress and strain are:

$$\sigma_x=\frac{12000}{201.06}=59.68\text{ MPa},\qquad
\varepsilon_x=\frac{0.300}{500}=0.000600.$$

Hence:

$$E=\frac{\sigma_x}{\varepsilon_x}
=\frac{59.68}{0.000600}
=\boxed{99.47\text{ GPa}}.$$

The lateral strain uses the **diameter change divided by the original diameter**:

$$\varepsilon_y=\frac{\Delta d}{d}
=\frac{-0.0024}{16}=-0.000150.$$

Therefore:

$$\nu=-\frac{\varepsilon_y}{\varepsilon_x}
=-\frac{-0.000150}{0.000600}=\boxed{0.25}.$$

The measured changes are in different directions. Divide each change by the original dimension in that same direction.

</details>
</div>

{{1}}
********************
**Quick check**

Why is $\Delta d$ divided by 16 mm when calculating the lateral strain?

<!-- data-solution-button="3" -->
[(X)] The measured change is a diameter change, so its reference dimension is the original diameter.
[( )] The axial gauge length is irrelevant to every part of the calculation.
[( )] Strain is calculated by multiplying a displacement by its original dimension.
********************

## Problem: Stress and Deformation of a Thin Plate

A thin rectangular plate carries uniform in-plane stresses. The broad faces are free, and the plate is free to change thickness. Treat the material as homogeneous, isotropic and linearly elastic.

![Positive in-plane normal and shear stresses](images/PlaneStress_Week08_img09_PlaneStressElement.svg)<!-- style="width: 60%; display: block; margin: auto;" -->

<!-- data-type="none" -->
| Quantity | Symbol | Value |
|:--|:--:|:--|
| Young's modulus | $E$ | 200 GPa |
| Poisson's ratio | $\nu$ | 0.30 |
| Normal stress in $x$ | $\sigma_x$ | 80 MPa |
| Normal stress in $y$ | $\sigma_y$ | 40 MPa |
| Shear stress | $\tau_{xy}$ | 30 MPa |
| Original length in $x$ | $L_x$ | 100 mm |
| Original length in $y$ | $L_y$ | 60 mm |
| Original thickness | $t$ | 2 mm |

1. Calculate $\varepsilon_x$, $\varepsilon_y$ and $\gamma_{xy}$.
2. Determine the changes in the two in-plane lengths.
3. Calculate $\varepsilon_z$ and the change in thickness.
4. Explain why the material can become longer in both $x$ and $y$, despite the Poisson effect.

**Check your answers**

Enter numerical values only, including the sign. Use at least three significant figures. Normal strains are dimensionless; enter engineering shear strain in **radians** and dimensional changes in **mm**. Answers within 1% are accepted. Scientific notation such as `1e-4` is also accepted.

<div class="plate-answer-checks" style="display: flex; flex-wrap: wrap; gap: 1rem 3rem; align-items: flex-start;">
<div style="flex: 1 1 20rem; max-width: 28rem; min-width: 0;">

**Strains**

**$\varepsilon_x$ (dimensionless):**

<!-- data-solution-button="3" -->
[[0.00034]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (0.00034)) <= 3.4e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\varepsilon_y$ (dimensionless):**

<!-- data-solution-button="3" -->
[[8e-05]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (8e-05)) <= 8e-07
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\gamma_{xy}$ (rad):**

<!-- data-solution-button="3" -->
[[0.00039]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (0.00039)) <= 3.9e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\varepsilon_z$ (dimensionless):**

<!-- data-solution-button="3" -->
[[-0.00018]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (-0.00018)) <= 1.8e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

</div>
<div style="flex: 1 1 20rem; max-width: 28rem; min-width: 0;">

**Changes in dimensions**

**$\delta_x$ (mm):**

<!-- data-solution-button="3" -->
[[0.034]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (0.034)) <= 0.00034
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\delta_y$ (mm):**

<!-- data-solution-button="3" -->
[[0.0048]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (0.0048)) <= 4.8e-05
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\Delta t$ (mm):**

<!-- data-solution-button="3" -->
[[-0.00036]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (-0.00036)) <= 3.6e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

</div>
</div>

<div class="post-class-solution">
<details>
<summary><strong>Reveal solution</strong></summary>

For plane stress, $\sigma_z=0$. Generalised Hooke's law gives the normal strains, and $\gamma_{xy}=\tau_{xy}/G$ gives the engineering shear strain. Use $E=200000\text{ MPa}$:

$$\varepsilon_x=\frac{\sigma_x-\nu\sigma_y}{E}=\frac{80-0.30(40)}{200000}
=\boxed{0.000340},$$

$$\varepsilon_y=\frac{\sigma_y-\nu\sigma_x}{E}=\frac{40-0.30(80)}{200000}
=\boxed{0.0000800},$$

$$G=\frac{E}{2(1+\nu)}=\frac{200000}{2(1+0.30)}=76923.08\text{ MPa},\qquad
\gamma_{xy}=\frac{\tau_{xy}}{G}=\frac{30}{76923.08}=\boxed{0.000390\text{ rad}}.$$

To first order in the small strains, the changes in the original in-plane lengths are:

$$\delta_x=\varepsilon_xL_x=0.000340(100)=\boxed{0.0340\text{ mm}},$$

$$\delta_y=\varepsilon_yL_y=0.0000800(60)=\boxed{0.00480\text{ mm}}.$$

Through the thickness:

$$\varepsilon_z=-\frac{\nu}{E}(\sigma_x+\sigma_y)=-\frac{0.30}{200000}(80+40)
=\boxed{-0.000180},$$

$$\Delta t=\varepsilon_z t=-0.000180(2)
=\boxed{-0.000360\text{ mm}}.$$

In each in-plane direction, the direct extension exceeds the lateral contraction caused by the other tensile stress. The net normal strains in $x$ and $y$ are therefore both positive. The thickness decreases.

</details>
</div>

## Discussion: Is Plane Stress Appropriate?

**For each scenario, decide whether plane stress is appropriate. Be prepared to justify your answer before checking the explanation.**

**1. A thin plate is pulled along its edges.** Its broad faces are free and the loads act in the plate's mid-plane. Consider a region away from the grips.

<!-- data-solution-button="3" -->
[(X)] Yes
[( )] No
****************************************
The plate is thin, loading is in-plane and the broad faces are free of traction. Away from local grip effects, through-thickness stresses can be neglected.
****************************************

{{1}}
********************
**2. The same plate is prevented from changing thickness by rigid restraints on its broad faces.**

<!-- data-solution-button="3" -->
[( )] Yes
[(X)] No
****************************************
Free Poisson contraction has been prevented. The restraints can produce a through-thickness reaction stress, so setting $\sigma_z=0$ is generally incompatible with this constraint.
****************************************
********************

{{2}}
********************
**3. A thin horizontal plate carries a downward load on its broad face and bends substantially.**

<!-- data-solution-button="3" -->
[( )] Yes
[(X)] No
****************************************
An $x$–$y$ plane-stress continuum model has in-plane displacement degrees of freedom. It cannot represent the out-of-plane deflection and bending required here. We will study shell elements later in the module.
****************************************
********************

{{3}}
********************
**4. A thin plate contains a central circular hole and is pulled in tension along its edges.** The tensile loads act in the plate's mid-plane; the broad faces and the hole surface are free of applied traction. Consider a region away from the grips.

![Thin plate with a central circular hole under in-plane tensile loading](images/PlaneStress_Week08_img14_PlateWithHole.svg)<!-- style="width: 80%; display: block; margin: auto;" -->

1. Is plane stress a reasonable assumption for this structure?
2. Does the presence of the hole automatically invalidate the plane-stress assumption? Explain.
3. Would plane stress remain appropriate if the plate experienced significant out-of-plane bending?

<div class="post-class-solution">
<details>
<summary><strong>Reveal explanation</strong></summary>

Plane stress is a reasonable approximation for a thin plate under in-plane loading with traction-free broad faces, provided through-thickness effects are small.

The hole produces a local **stress concentration**: the in-plane stresses vary with position. This does not automatically invalidate plane stress, which requires negligible through-thickness stresses, **not a uniform in-plane stress distribution**.

Significant out-of-plane bending requires a bending description, so the in-plane plane-stress treatment used here would no longer be sufficient.

</details>
</div>
********************

## Problem: Unequal Normal Stresses

A rectangular block carries the normal stresses shown below. Assume a homogeneous, isotropic, linearly elastic material undergoing small deformations. There are no applied shear stresses.

![Block under tension in x and compression in y, with traction-free z faces](images/PlaneStress_Week08_img11_UnequalNormalStresses.svg)<!-- style="width: 80%; display: block; margin: auto;" -->

<!-- data-type="none" -->
| Quantity | Symbol | Value |
|:--|:--:|:--|
| Young's modulus | $E$ | 200 GPa |
| Poisson's ratio | $\nu$ | 0.25 |
| Original dimension in $x$ | $L_x$ | 40 mm |
| Original dimension in $y$ | $L_y$ | 20 mm |
| Original dimension in $z$ | $L_z$ | 30 mm |
| Normal stress in $x$ | $\sigma_x$ | +120 MPa |
| Normal stress in $y$ | $\sigma_y$ | −40 MPa |
| Normal stress in $z$ | $\sigma_z$ | 0 MPa |

Take tensile normal stresses and extensions as positive, and compressive normal stresses and contractions as negative.

1. Calculate the three normal strains using generalised Hooke's law.
2. Determine the corresponding changes in dimensions, $\delta_x$, $\delta_y$ and $\delta_z$.
3. Explain the signs of the resulting strains, including the influence of Poisson's ratio. In particular, does $\sigma_z=0$ require $\varepsilon_z=0$?

**Check your answers**

Enter numerical values only, including the sign. Use at least three significant figures. Normal strains are dimensionless; enter dimensional changes in **mm**. Answers within 1% are accepted. Scientific notation such as `1e-4` is also accepted.

<div class="normal-stress-answer-checks" style="display: flex; flex-wrap: wrap; gap: 1rem 3rem; align-items: flex-start;">
<div style="flex: 1 1 20rem; max-width: 28rem; min-width: 0;">

**Strains**

**$\varepsilon_x$ (dimensionless):**

<!-- data-solution-button="3" -->
[[0.00065]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (0.00065)) <= 6.5e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\varepsilon_y$ (dimensionless):**

<!-- data-solution-button="3" -->
[[-0.00035]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (-0.00035)) <= 3.5e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\varepsilon_z$ (dimensionless):**

<!-- data-solution-button="3" -->
[[-0.0001]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (-0.0001)) <= 1e-06
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

</div>
<div style="flex: 1 1 20rem; max-width: 28rem; min-width: 0;">

**Changes in dimensions**

**$\delta_x$ (mm):**

<!-- data-solution-button="3" -->
[[0.026]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (0.026)) <= 0.00026
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\delta_y$ (mm):**

<!-- data-solution-button="3" -->
[[-0.007]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (-0.007)) <= 7e-05
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

**$\delta_z$ (mm):**

<!-- data-solution-button="3" -->
[[-0.003]]
<script>
const value = Number("@input");
Number.isFinite(value) && Math.abs(value - (-0.003)) <= 3e-05
</script>
****************************************
Correct. Your value and sign are consistent with the specified stresses and material properties.
****************************************

</div>
</div>

<div class="post-class-solution">
<details>
<summary><strong>Reveal worked solution</strong></summary>

Use $E=200000\text{ MPa}$ so that stresses and modulus have consistent units. Generalised Hooke's law gives:

$$\varepsilon_x=\frac{\sigma_x-\nu\sigma_y-\nu\sigma_z}{E}
=\frac{120-0.25(-40)-0.25(0)}{200000}
=\frac{130}{200000}
=\boxed{+0.00065},$$

$$\varepsilon_y=\frac{\sigma_y-\nu\sigma_x-\nu\sigma_z}{E}
=\frac{-40-0.25(120)-0.25(0)}{200000}
=\frac{-70}{200000}
=\boxed{-0.00035},$$

$$\varepsilon_z=\frac{\sigma_z-\nu\sigma_x-\nu\sigma_y}{E}
=\frac{0-0.25(120)-0.25(-40)}{200000}
=\frac{-20}{200000}
=\boxed{-0.00010}.$$

Normal strains are dimensionless. Using the original dimensions and retaining unrounded values:

$$\delta_x=\varepsilon_xL_x=\frac{130}{200000}(40)
=\boxed{+0.026\text{ mm}},$$

$$\delta_y=\varepsilon_yL_y=\frac{-70}{200000}(20)
=\boxed{-0.007\text{ mm}},$$

$$\delta_z=\varepsilon_zL_z=\frac{-20}{200000}(30)
=\boxed{-0.003\text{ mm}}.$$

- In $x$, the tensile stress produces extension. Compression in $y$ adds a positive lateral strain through the Poisson effect, increasing the extension.
- In $y$, the compressive stress produces contraction. Tension in $x$ adds a negative lateral strain, increasing the contraction.
- In $z$, there is no direct stress contribution. Tension in $x$ causes lateral contraction, while compression in $y$ causes lateral expansion. The contraction is larger, so the net strain is negative.

Thus $\sigma_z=0$ does **not** imply $\varepsilon_z=0$: the stresses in the other two directions still contribute through Poisson's ratio.

</details>
</div>

## Analytical Problem: General Stress in Three Dimensions

*Assesses generalised Hooke's law for an isotropic material under a three-dimensional stress state.*

The isotropic rectangular block is subjected to an equal compressive pressure $P$ on every face. The measured change in its $x$-direction length is $\delta_x=-0.015\text{ mm}$. Assume linear-elastic behaviour and take compressive normal stress as negative.

![Block under equal compressive pressure with original dimensions in x, y and z](images/PlaneStress_Week08_img12_AnalyticalPressure.svg)<!-- style="width: 75%; display: block; margin: auto;" -->

<!-- data-type="none" -->
| Quantity | Symbol | Value |
|:--|:--:|:--|
| Young's modulus | $E$ | Use your Blackboard value, GPa |
| Poisson's ratio | $\nu$ | Use your Blackboard value |
| Initial length in $x$ | $L_x$ | Use your Blackboard value, mm |
| Initial length in $y$ | $L_y$ | Use your Blackboard value, mm |
| Initial length in $z$ | $L_z$ | Use your Blackboard value, mm |
| Measured change in $x$ | $\delta_x$ | −0.015 mm |

**Determine the magnitude of the applied pressure $P$. Give your answer in MPa.**

As a check on your working, determine the changes in the $y$ and $z$ lengths; **only the pressure is submitted for marking**. Enter your answer to at least three significant figures.

Begin your calculation in class. Use the values supplied with your Blackboard question, including its measured shortening if this is randomised. Keep a clear record of your equations, substitutions and unit conversions, and retain your workings for the analytical portfolio.

<details>
<summary><strong>Reveal checks</strong></summary>

- Use the same units for stress and elastic modulus.
- Calculate the measured strain using the original length in the same direction.
- Distinguish the positive pressure magnitude from the negative compressive normal stresses.
- Include the Poisson contributions from the other loaded directions.
- Equal normal strains do not imply equal changes in length when the original dimensions differ.
- Check that your final submitted pressure is a positive magnitude in MPa.

</details>

## Week 8 Completion Check

- [ ] I can calculate elastic properties from axial and lateral measurements.
- [ ] I can account for the Poisson effect when stresses act in more than one direction.
- [ ] I can calculate normal and engineering shear strains for plane stress.
- [ ] I can explain when plane stress is appropriate and when it is not.
- [ ] I can distinguish equal strain from equal change in length.
- [ ] I have started the analytical problem and recorded the remaining work and its Blackboard deadline.

## C. INDEPENDENT STUDY: After class

Complete the **analytical problem** using your Blackboard values. Submit your numerical answer by the published deadline and keep your workings for the final analytical portfolio.

Review any calculations you found difficult, using the worked solutions above. The optional axial problem on the following page provides additional practice with changes in length.

For next week, study the released Week 9 preparation on stress transformations and principal stresses before the lectorial.

## Optional Practice: A Stepped Axial Bar

A stepped circular bar is subjected to a tensile force $P$. Its material has $E=200\text{ GPa}$ throughout.

![Three segments of a stepped circular bar in series](images/PlaneStress_Week08_img13_SteppedBar.svg)<!-- style="width: 85%; display: block; margin: auto;" -->

1. Determine $P$ such that the total extension is $0.001\text{ mm}$.
2. Calculate the extension of the central section $BC$.

<div class="post-class-solution">
<details>
<summary><strong>Reveal solution</strong></summary>

The same internal tensile force passes through each segment. Add their extensions:

$$\delta=\sum_i\frac{PL_i}{EA_i}
=\frac{P}{E}\left(\frac{50}{\pi(38)^2/4}
+\frac{75}{\pi(25)^2/4}
+\frac{50}{\pi(38)^2/4}\right).$$

The geometric sum is:

$$\sum_i\frac{L_i}{A_i}=0.240963\text{ mm}^{-1}.$$

Therefore:

$$P=\frac{E\delta}{\sum_iL_i/A_i}
=\frac{200000(0.001)}{0.240963}
=\boxed{830.0\text{ N}}.$$

For the central segment:

$$\delta_{BC}=\frac{P(75)}{200000\,[\pi(25)^2/4]}
=\boxed{0.0006341\text{ mm}}.$$

The central segment is both longer and narrower, so it contributes the greatest part of the total extension.

</details>
</div>

## Further reading

@FurtherReading

@ReadingBook(@BeerBook,@BeerLibrary,```
- **Chapter 2:** Axial strain, Poisson's ratio and the generalised form of Hooke's law.
```)
