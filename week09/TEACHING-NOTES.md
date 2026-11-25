# Week 9 delivery and solution release

## Visibility and release

The in-class numerical problems are visible. Their worked solutions and numerical circle drawings are hidden in both Presentation and Textbook modes. Retrieval feedback and the failure-criterion decision feedback remain available during class.

Release all five solution blocks together by changing the **single local macro definition** in the header of `week09.md`:

```html
@Week09Solution: <div class="week09-post-class" style="display: none;" hidden>
```

to:

```html
@Week09Solution: <div class="week09-post-class">
```

Keep the five uses of `@Week09Solution` and their closing `</div>` tags. This restores the solution dropdowns without changing the problems. Nested dropdowns expose successive parts of a calculation; the three guided construction stages use normal LiaScript clicks. Numerical answers are not placed in student-visible click reveals or automatic checkers.

Before class, retain the hidden macro above. Preview the selected state before publication. Hiding is for presentation, not access control: raw source remains readable. These are unassessed teaching examples; no Q5 answer key is included. No commit, push or release is automatic.

## Suggested 150-minute session

| Minutes | Activity |
|:--|:--|
| 0–10 | Retrieval: physical stress state, zero principal shear, 30° to 60° |
| 10–40 | Individual attempt and paired comparison: 60, 40, 20 MPa problem |
| 40–65 | Individual-face shear signs; guided circle construction; 50, −10, 40 MPa circle problem |
| 65–75 | Break |
| 75–100 | Direct teaching: Tresca, von Mises, brittle normal-stress criterion and comparison |
| 100–130 | Von Mises/250 MPa yield problem; interpretation and start Q5 setup |
| 130–150 | Optional scarf-joint extension, or further core-problem support |

The core is 130 minutes; extension is 20 minutes. Adjust within those blocks, especially the 25-minute construction/second-problem block. If construction needs longer, use extension time. Complete the core principal-stress and Q5 preparation before the extension.

Use OneNote for live working. Students attempt first, compare next, then discuss the calculation together. The hidden source contains a step-by-step reference for the instructor; release the dropdowns after the lectorial. In the construction activity the displayed circle stays symbolic; students add numerical scales, points, centre, radius and angles to their own sketch.

## Sources inspected

- `Sessions/KB5034_Week_9_2D Stresses & Plane Stress Elements.pptx`: text and assets inspected; selected original slides rendered in PowerPoint. Slides 4–9 supply the problems/construction, 11–19 the criteria, 20 the von Mises problem, and 22 the scarf joint.
- `Sessions/Week 9 - Constructing Mohr's Circle & Problems.pdf`: all six pages rendered and inspected. Page 1 supplies the circle and individual-face shear convention; pages 2–3 the 50, −10, 40 MPa problem; page 4 the first problem; page 6 the scarf-joint calculation.
- `Principal Stresses.pdf` was **not found** after searching the local teaching workspace. No contents or diagrams from that unavailable source have been invented.
- Current Week 9 pre-work, Week 8 in-class organisation and `week08/TEACHING-NOTES.md` were inspected. Existing Week 9 pre-class text and shared templates are unchanged; only the local release macro is added to the Week 9 header.

## Conventions and source discrepancies

- Use tensile normal stress positive and positive tensor `tau_xy` upwards on the positive x face. Physical angles are counterclockwise from x to x'. Clockwise individual-face shear plots above the Mohr axis; anticlockwise below. Thus X=(sigma_x,−tau_xy), Y=(sigma_y,+tau_xy). Counterclockwise physical theta maps to counterclockwise circle 2theta from X.
- The older handwritten first-problem sketch and its circle on page 4 use the opposite graphical shear sense in places, although the principal-angle arithmetic uses positive shear. The new diagrams consistently use the current pre-class convention and the task's positive shear data. No old conflicting sketch is reproduced unchanged.
- Slide 9's normal-load arrows show **compression** in y despite its unsigned “10 MPa” label. The new problem explicitly states sigma_y=−10 MPa, matching handwritten pages 1–2.
- The handwritten page-5 problem with sigma_x=−60 MPa is a different example; it is not substituted for either required activity.
- The source calls brittle failure “yielding” and uses yield-strength notation. The new page correctly describes **fracture**, using separate tensile and compressive strength magnitudes. The square illustrates equal strengths only.
- The scarf-joint slide draws its plane at 25° to horizontal, while the handwritten solution transforms through a **normal angle** of 25° and obtains the shear-controlled 1.25 kN result. The module leader selected the handwritten 1.25 kN interpretation. The recreated diagram and text explicitly use x' (plane normal) at +25° to x, hence the plane is 65° to horizontal. The alternative original plane-angle interpretation would give a 0.779 kN normal-stress limit and is not mixed into the student activity.
- The normalised Tresca hexagon, von Mises ellipse and brittle square recreate the original surfaces. The experimental comparison image is copied unchanged from slide 19 (`image26.png`); its Dowling (1993) attribution is retained beside it.

## Verified numerical reference

Angles below are physical x-to-x' angles, modulo 180°. The first principal orientation carries the larger in-plane principal stress; its perpendicular carries the smaller.

| Case | Verified results |
|:--|:--|
| 60, 40, 20 MPa | C=50 MPa; R=22.3606798 MPa; principal stresses 72.3606798 and 27.6393202 MPa; principal angles 31.7174744° and 121.7174744°; maximum in-plane shear +R at −13.2825256°, −R at 76.7174744°. Absolute 3D maximum shear is 36.1803399 MPa. |
| 50, −10, 40 MPa | C=20 MPa; R=50 MPa; principal stresses 70 and −30 MPa; principal angles 26.5650512° and 116.5650512°; maximum in-plane shear +50 MPa at −18.4349488°, −50 MPa at 71.5650512°. Normal stress there is 20 MPa. Absolute 3D maximum shear is also 50 MPa. |
| Von Mises, first state | sqrt(4000)=63.2455532 MPa; factor of safety 250/sqrt(4000)=3.9528471; no first yield predicted. |
| Scarf joint | A=800 mm²; normal limit 3583.30236 N; shear limit 1253.19100 N; governing load 1.25 kN in shear. At the unrounded limit, normal stress is 0.279784595 MPa and shear magnitude 0.600 MPa. |

The in-plane principal labels do not imply that the zero third principal stress is always the smallest. Tresca includes all three. Factor-of-safety load multiplication assumes proportional loading and the same linear-elastic stress solution.

## Validation completed

- Independently evaluated both stress transformations at each principal and maximum-shear orientation, including tensor shear signs. Cross-checked von Mises using component and three-principal-stress forms; checked scarf-joint force limits in N and MPa.
- Checked the normalised von Mises ellipse and Tresca hexagon against their equations. Numerical circle axes cross at zero normal stress; X/Y coordinates and counterclockwise angle arcs use the agreed plotting convention.
- Inspected every new SVG, checked XML and local image references, and exercised all new class pages in the local LiaScript renderer with no detected mathematical rendering errors or broken images. All four added retrieval/decision quizzes passed.
- Tested all three guided construction stages. Confirmed the five solution blocks are hidden in Presentation and Textbook modes. A temporary ignored preview with the single macro switched to visible successfully rendered and expanded all five solution blocks and their nested parts.
- Pre-class body and further reading are preserved exactly. The only pre-class-header addition is the local release macro. Shared templates and assessment files are unchanged. No ABAQUS analysis is required or claimed.
