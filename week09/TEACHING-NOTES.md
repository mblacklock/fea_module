# Week 9 — Teaching Notes

## Session overview

**Module:** KB5034 Mechanics & Finite Element Analysis

**Topic:** 2D stresses, stress transformations, principal stresses and failure criteria.

**Duration:** 150-minute lectorial.

**Learning Outcome 3.2:** Calculate principal stresses for simple engineering structures.

The session builds on the pre-class videos through student-led numerical problems, live Mohr's circle construction, direct teaching of failure criteria and independent assessed work.

Plane-stress finite element formulation and modelling are covered in Week 10.

## Pre-class preparation

Students complete five Panopto recordings:

| Video | Topic | Duration |
|---|---|---:|
| 1 | Transformations of stresses | 7 min |
| 2 | Summing forces | 6 min |
| 3 | Rotating stresses | 11 min |
| 4 | Mohr's circle | 12 min |
| 5 | Principal stresses | 11 min |
| | **Total video duration** | **47 min** |

The supporting LiaScript material includes retrieval questions, reference equations and a completion checklist.

### Video correction

Video 4 contains an intermediate algebraic error at approximately 1:25.

The cross terms are omitted when individually squaring the stress transformation equations. These terms cancel when the two squared equations are added, so the final equation of Mohr's circle is correct.

A written correction is provided directly below the recording. The video does not need to be re-recorded.

## Suggested lectorial schedule

| Minutes | Activity |
|---|---|
| 0–10 | Retrieval and discussion of stress transformations |
| 10–40 | Analytical principal-stress problem and graphical check |
| 40–65 | Live graphical construction and graphical Mohr's circle problem |
| 65–75 | Break |
| 75–115 | Failure criteria: Tresca, von Mises, brittle fracture and comparison |
| 115–130 | Independent work on Analytical Problem Q5 |
| 130–150 | Optional scarf-joint problem or further student support |

Timings are indicative. Prioritise the core material and assessed problem over the optional extension.

## Delivery approach

LiaScript supports live teaching rather than replacing the lecturer's explanation.

Use OneNote for:

- Worked numerical calculations.
- Stress element sketches.
- Mohr's circle construction.
- Derivation of the Tresca criterion.
- Construction of failure surfaces.
- Simplification of von Mises equations for different stress states.
- The optional scarf-joint calculation.

Students should attempt the numerical problems independently before comparing their approaches with neighbours and discussing the solutions.

Numerical answer checkers provide immediate feedback without requiring students to access the full worked solutions.

## Stress and angle conventions

Use the following conventions consistently throughout the session:

- Tensile normal stress is positive.
- Positive tensor shear acts in positive y on the positive x face.
- Physical rotation angles are positive anticlockwise from x to x'.
- On Mohr's circle, clockwise individual-face shear tendency plots above the horizontal axis.
- Anticlockwise individual-face shear tendency plots below the horizontal axis.

Consequently, the original face points are:

$$X=(\sigma_x,-\tau_{xy})$$

$$Y=(\sigma_y,+\tau_{xy})$$

With this convention, anticlockwise physical rotation corresponds to anticlockwise rotation around Mohr's circle from X.

The angle around Mohr's circle is twice the physical rotation angle.

For plane stress, sigma_1 and sigma_2 denote the larger and smaller in-plane principal stresses. The through-thickness principal stress is zero.

Do not assume that the zero through-thickness principal stress is necessarily the smallest of all three principal stresses.

## Retrieval

Establish that students understand:

1. Rotating the coordinate axes does not change the physical stress state.
2. Principal planes have zero shear stress.
3. The angular movement around Mohr's circle is twice the physical rotation.

## Problem 1 — Principal stresses and orientations

Given:

- sigma_x = 60 MPa
- sigma_y = 40 MPa
- tau_xy = 20 MPa

Students calculate the principal stresses, principal orientations, maximum in-plane shear stress and corresponding orientations.

Use substitution into the transformation equations to establish which principal angle corresponds to the larger principal stress and to determine the signs of the transformed shear stresses.

### Numerical reference

| Quantity | Result |
|---|---:|
| Circle centre | 50 MPa |
| Circle radius | 22.36 MPa |
| Larger in-plane principal stress | 72.36 MPa |
| Smaller in-plane principal stress | 27.64 MPa |
| Larger principal stress orientation | 31.72° |
| Smaller principal stress orientation | 121.72° |
| Maximum in-plane shear magnitude | 22.36 MPa |
| Positive maximum shear orientation | -13.28° |
| Negative maximum shear orientation | 76.72° |
| Normal stress on maximum shear planes | 50 MPa |
| Absolute maximum shear stress | 36.18 MPa |

Equivalent physical orientations differing by 180° are acceptable.

The distinction between maximum in-plane shear and absolute maximum shear becomes important when introducing Tresca.

The completed numerical Mohr's circle remains in part 5 of this problem's worked solution as a graphical check of the analytical results. General sign-convention and construction guidance is on the following graphical-method problem page.

## Problem 2 — Graphical Mohr's circle

Given:

- sigma_x = 50 MPa
- sigma_y = -10 MPa
- tau_xy = 40 MPa

Students should construct Mohr's circle and determine the results graphically rather than using the analytical principal stress and angle equations.

### Live Mohr's circle construction

The individual-face shear sign diagram and explanation are visible on this problem page during class. The separate **Constructing Mohr's Circle** dropdown contains the existing axes, face-point and circle-construction diagrams with symbolic X=(sigma_x,-tau_xy) and Y=(sigma_y,+tau_xy) coordinates. No numerical solution values are supplied in that guidance.

Demonstrate the construction live in OneNote, covering the plotting convention, face points, centre/radius, principal intercepts, physical versus circle angles, and the relationship between plotted and tensor shear signs.

The sign convention and construction dropdown are outside `@Week09Solution`; they remain accessible with `@SolutionsHidden`. The completed numerical circle and this problem's worked solution remain within the existing release mechanism. The active source visibility setting is preserved.

### Numerical reference

| Quantity | Result |
|---|---:|
| Circle centre | 20 MPa |
| Circle radius | 50 MPa |
| Larger in-plane principal stress | 70 MPa |
| Smaller in-plane principal stress | -30 MPa |
| Larger principal stress orientation | 26.57° |
| Smaller principal stress orientation | 116.57° |
| Maximum in-plane shear magnitude | 50 MPa |
| Positive maximum shear orientation | -18.43° |
| Negative maximum shear orientation | 71.57° |
| Normal stress on maximum shear planes | 20 MPa |
| Absolute maximum shear stress | 50 MPa |

The zero through-thickness principal stress lies between the two in-plane principal stresses. Consequently, the absolute maximum shear stress equals the maximum in-plane shear stress in this example.

The original PowerPoint diagram shows compression in y despite its unsigned 10 MPa label. The revised problem explicitly states -10 MPa.

### Numerical answer checkers

Both principal-stress problems contain numerical answer checkers.

Current tolerances:

- Stress: ±0.05 MPa.
- Principal orientation: ±0.1°.

Principal orientations equivalent modulo 180° are accepted.

Allow for reasonable graphical measurement errors when discussing the second problem in class. The automated tolerances are tighter than may be achievable using a hand-drawn circle and protractor.

## Failure criteria

Introduce the distinction between:

- Ductile yielding: Tresca and von Mises.
- Brittle fracture: maximum normal stress criterion.

Use sigma_Y for uniaxial yield strength and sigma_F for uniaxial fracture strength.

### Tresca — Maximum shearing stress criterion

Introduce Tresca using the physical observation that plastic deformation in ductile metals occurs through slip.

The genuine tensile-test fracture photograph illustrates the importance of shear under tensile loading.

Source: Ellis (2007), NASA/TM—2007-214968.

Distinguish the observed fracture from the onset of yielding predicted by Tresca.

#### Derivation

Develop the criterion live in OneNote using a uniaxial tensile test at yield.

$$\sigma_x=\sigma_Y,\qquad
\sigma_y=0,\qquad
\tau_{xy}=0$$

Use Mohr's circle to establish:

$$\tau_{\max}=\frac{\sigma_Y}{2}$$

Tresca's hypothesis is that yielding under general loading occurs when the absolute maximum shear stress reaches this critical value.

$$\tau_{\max}\geq\frac{\sigma_Y}{2}$$

Introduce the general expression:

$$\tau_{\max}=
\frac{\sigma_{\max}-\sigma_{\min}}{2}$$

For plane stress, consider the two in-plane principal stresses and zero.

When both in-plane principal stresses have the same sign, zero is one of the extreme principal stresses. Yielding is predicted when:

$$|\sigma_1|\geq\sigma_Y
\quad\text{or}\quad
|\sigma_2|\geq\sigma_Y$$

When the in-plane principal stresses have opposite signs, zero lies between them. Yielding is predicted when:

$$|\sigma_1-\sigma_2|\geq\sigma_Y$$

Construct the hexagonal failure surface live using these two conditions.

The complete derivation, including three-dimensional Mohr's circle diagrams for both tensile, both compressive and opposite-sign stress states, is available in the derivation dropdown.

A detailed treatment of three-dimensional Mohr's circles is not essential for this Level 5 session. Use the diagrams if they help explain the criteria, but avoid extending the session into general three-dimensional stress transformations.

### Von Mises

State the general von Mises criterion. A full derivation from distortional strain energy is not required.

Retain the original teaching sequence:

1. General equation in stress components.
2. Equation in principal stresses.
3. Plane-stress simplification.
4. Construction of the elliptical failure surface.
5. Comparison of the equations for 3D, 2D and 1D stress states.

Develop the plane-stress principal-stress equation live:

$$\sigma_v^2=
\sigma_1^2-\sigma_1\sigma_2+\sigma_2^2$$

At yield:

$$\sigma_1^2-\sigma_1\sigma_2+\sigma_2^2
=\sigma_Y^2$$

The ellipse is inclined at 45° to the principal-stress axes and passes through the four uniaxial yield-strength intercepts.

Use the blank axes to construct the failure surface in OneNote.

Develop the 2D and 1D simplifications of the general von Mises equation live. Completed equations are available behind the teaching reveal.

For the assessed problem, students require the plane-stress component formulation:

$$\sigma_v=
\sqrt{\sigma_x^2-\sigma_x\sigma_y+
\sigma_y^2+3\tau_{xy}^2}$$

The more extensive treatment of von Mises is intentional. Tresca and maximum normal stress retain relatively simple principal-stress formulations for general stress states, whereas the von Mises component equation changes substantially when simplified to plane or uniaxial stress.

Von Mises stress will also be encountered routinely in ABAQUS.

### Brittle materials — Maximum normal stress criterion

Introduce the simple hypothesis that fracture occurs when a principal normal stress reaches the material's fracture strength.

For equal tensile and compressive fracture strengths:

$$|\sigma_1|\geq\sigma_F
\quad\text{or}\quad
|\sigma_2|\geq\sigma_F$$

Construct the square fracture surface live.

Explain that tensile and compressive fracture strengths may differ. In this case, the limits on each principal-stress axis become:

$$-\sigma_{Fc}\leq\sigma_i\leq\sigma_{Ft}$$

The failure surface remains square but is no longer centred on the origin.

No additional derivation is necessary.

### Comparing failure criteria

Construct or compare the Tresca and von Mises failure surfaces on the same axes.

Ask students which criterion they would use and discuss the advantages and disadvantages before presenting the experimental comparison figure.

Key discussion points:

| Aspect | Tresca | Von Mises |
|---|---|---|
| Physical basis | Maximum shear stress | Distortion energy |
| Hand calculation | Relatively simple | More involved |
| Conservatism | At least as conservative as von Mises | Less conservative for some stress combinations |
| Experimental agreement | Good approximation | Generally better for ductile metals |
| ABAQUS | Available stress invariant | Default stress invariant |

Both criteria agree for uniaxial stress.

Both are available directly in ABAQUS, so computational complexity is not a significant consideration when using FEA.

The choice of criterion should reflect material behaviour, experimental evidence and relevant design requirements.

Retain the original experimental comparison figure from Dowling, Mechanical Behavior of Materials (1993).

## Analytical Problem Q5

Q5 is assessed work, worth 2% of the module mark.

The separate numerical von Mises practice problem has been removed. Students instead complete their own randomised Blackboard assessment during or after the lectorial.

The LiaScript page contains:

- General plane-stress element diagram.
- Stress component definitions.
- Material yield strength definition.
- Required numerical quantity.
- Submission instructions.

Students calculate the factor of safety against yielding using their individual Blackboard values.

The Week 9 LiaScript specifies two decimal places.

Ensure the Blackboard question uses the same rounding instruction.

No Q5 worked solution, specimen numerical answer or automatic answer checker is included in the student-facing LiaScript.

Do not add the moderator answer key to the repository.

## Optional extension — Adhesive strength of a scarf joint

Use this problem if time permits.

It provides a practical application of the stress transformation equations and demonstrates that shear can govern failure even when a member is loaded in tension.

Given:

- Cross-section: 80 × 10 mm.
- Rotation from x to x': 25° anticlockwise.
- Allowable adhesive normal stress: 800 kPa.
- Allowable adhesive shear stress: 600 kPa.

The applied load acts in the y direction.

The x' axis is normal to the adhesive plane, and the y' axis is parallel to it.

### Geometry clarification

The original PowerPoint geometry and handwritten solution were inconsistent about the definition of the 25° angle.

The revised problem explicitly defines 25° as the rotation from the horizontal x axis to the joint normal x'.

The adhesive plane is therefore inclined at 65° to the horizontal.

The revised SVG uses a common rotation transformation for the adhesive joint and rotated coordinate system, ensuring perpendicularity.

The revised geometry preserves the calculation in the original handwritten solution.

### Delivery

The relevant normal and shear stress transformation equations are supplied on the problem page.

Students should:

1. Determine the original stress state.
2. Transform the stresses onto the adhesive plane.
3. Calculate the load permitted by each allowable stress.
4. Identify the governing load and failure mode.

Develop the symbolic equations before substituting numerical values.

Treat the calculated stresses as nominal values, neglecting local stress concentrations and adhesive joint-edge effects.

### Numerical reference

| Quantity | Result |
|---|---:|
| Cross-sectional area | 800 mm² |
| Normal stress load limit | 3.583 kN |
| Shear stress load limit | 1.253 kN |
| Maximum permissible load | 1.25 kN |
| Governing failure mode | Shear |

At the unrounded governing load:

- Adhesive normal stress = approximately 0.280 MPa.
- Adhesive shear stress = 0.600 MPa.

Connect the result back to the earlier discussion of shear under tensile loading.

Do not imply that Tresca is being applied directly to the adhesive. This problem uses separate allowable normal and shear stress limits.

## Worked-solution visibility and release

Three unassessed worked solutions are controlled by the local Week 9 solution macro:

1. Principal stresses and orientations.
2. Graphical Mohr's circle.
3. Optional scarf-joint problem.

The macro definitions are located in the header of week09.md:

```html
@SolutionsHidden: <div class="week09-post-class" style="display: none;" hidden>
@SolutionsVisible: <div class="week09-post-class">

@Week09Solution: @SolutionsHidden
```

### Before the lectorial

Use:

```html
@Week09Solution: @SolutionsHidden
```

This hides the full worked-solution dropdowns.

### After the lectorial

Use:

```html
@Week09Solution: @SolutionsVisible
```

This makes the three worked-solution dropdowns available.

Only the final macro reference needs to be changed.

### Independent teaching reveals

The following reveals are independent of the worked-solution macro and remain accessible during class:

- Tresca derivation.
- Completed Tresca failure surface.
- Completed von Mises equation and failure surface.
- Completed 2D and 1D von Mises equations.
- Maximum normal stress failure surface.
- Comparison of Tresca and von Mises surfaces.

Numerical answer checkers and retrieval questions also remain available.

Hiding content is a presentation mechanism, not access control. Students can potentially inspect the raw LiaScript source.

No assessed Q5 solution is included in the source.

## After-class activities

Students should:

- Complete and submit Analytical Problem Q5.
- Retain their workings for the analytical portfolio.
- Complete the optional scarf-joint problem if further practice is useful.
- Complete Week 10 preparation before the next lectorial.

## Source material

The Week 9 teaching material is based on:

- KB5034_Week_9_2D Stresses & Plane Stress Elements.pptx.
- Week 9 - Constructing Mohr's Circle & Problems.pdf.
- Existing Panopto recordings.
- KB5034 Assessment 001 hand-calculation brief.
- Dowling, Mechanical Behavior of Materials (1993).
- Ellis (2007), NASA/TM—2007-214968.

The original PowerPoint remains the primary reference for the failure-criteria teaching sequence.

## Pre-release checks

- [ ] Confirm the desired worked-solution visibility.
- [ ] Confirm all five Panopto recordings are accessible.
- [ ] Confirm the Video 4 correction renders correctly.
- [ ] Check LiaScript Presentation mode.
- [ ] Check numerical answer checkers.
- [ ] Check blank axes and completed failure-surface reveals.
- [ ] Check scarf-joint diagram and worked solution.
- [ ] Confirm Blackboard Q5 rounding instructions and deadline.
- [ ] Confirm no assessed solution is included.
- [ ] Merge develop into main when ready.

## Validation status

The final source review covered commit b868fdc on develop.

The LiaScript equations, numerical reference solutions, answer-checker values, image references and key SVG geometries were reviewed.

All 26 unique image references have corresponding repository files.

The latest live LiaScript rendering and Panopto playback require a final local check before release.

### Graphical-construction reorganisation — 26 November 2026

The two affected problem pages were checked in the local LiaScript renderer. With `@Week09Solution` set to `@SolutionsHidden` in a temporary preview copy, the face-shear convention remained visible and the independent construction dropdown opened correctly. Presentation and Textbook modes retained this access while hiding the numerical worked solutions. The construction diagrams loaded and no equation-rendering errors were detected. Source comparison confirmed that numerical answer checkers, completed numerical circles, pre-class content and the active source visibility setting were unchanged. This targeted check does not replace the remaining pre-release checks above.
