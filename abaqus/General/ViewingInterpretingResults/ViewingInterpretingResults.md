<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 1.0.0
language: en
mode: Textbook
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
comment: Viewing and interpreting results

script: ../../../course-links.js

@course: <a href="@1" data-lia-course="true">@0</a>
-->

# Viewing and interpreting results

**Tutorial 4 of 4 · First used in Week 1 · Independent study or supported practice**

Display stress and displacement, probe individual values, and check what the results mean physically.

**You need:** a completed run of [intro.inp](../IntroToABAQUS/files/intro.inp), using the unchanged original data. Follow @[course(creating and running a job)](../CreatingRunningJob/CreatingRunningJob.md) if you have not run it yet.

@[course(ABAQUS tutorial library)](../README.md) · @[course(Week 1 lesson)](../../../week01/week01.md)

The screenshots show the original ABAQUS/CAE interface. Icons and menu wording may vary in the version installed on your PC. Click a screenshot to enlarge it.

## 1. Open the completed results

In **Job Manager**, select the completed `intro` job and click **Results**.

![Completed job with the Results button highlighted](images/General_ViewingInterpretingResults_img01_ClickResults.png)

If you are returning to saved work, open the job's `.odb` output database using **File → Open**.

## 2. Locate the Visualization module

ABAQUS switches to **Visualization** and displays the model.

![Visualization module showing the truss model](images/General_ViewingInterpretingResults_img02_VisualizationModule.png)

For this one-step example, inspect the final frame containing the applied load, rather than the initial unloaded frame.

## 3. Plot contours on the deformed shape

Select **Plot Contours on Deformed Shape** from the toolbox.

![Plot Contours on Deformed Shape icon highlighted](images/General_ViewingInterpretingResults_img03_PlotContoursIcon.png)

A contour plot colours the model according to the selected output variable. Check the deformation scale factor: displayed deformation may be magnified for visibility.

## 4. Interpret the stress contour

The original example initially displays **S, Mises**, the von Mises stress.

![Constant von Mises stress contour for the single truss element](images/General_ViewingInterpretingResults_img04_ContourPlot.png)

This model has one uniform, axially loaded truss element, so its axial stress is constant. A single colour is expected.

For this uniaxial tension example, the von Mises value equals the magnitude of the axial stress. Von Mises stress alone does not tell you whether the axial stress is tensile or compressive.

## 5. Change the output variable

Open the variable dropdown currently labelled **S** and select **U**.

![Primary variable dropdown containing E, RF, S and U](images/General_ViewingInterpretingResults_img05_VariableDropdownS.png)

| Variable | Meaning |
| --- | --- |
| E | Strain |
| RF | Reaction force |
| S | Stress |
| U | Displacement |
| UR | Rotation, when available for the element and output requested |

Truss elements have no rotational degrees of freedom, so **UR** is not available for this example. The available variables depend on the model and the requested output.

## 6. Choose a displacement component

Use the adjacent dropdown to choose **Magnitude**, **U1**, **U2** or **U3**.

![Displacement component dropdown containing Magnitude, U1, U2 and U3](images/General_ViewingInterpretingResults_img06_DisplacementSuboptions.png)

For this example, directions 1, 2 and 3 correspond to the global x, y and z directions.

The displacement magnitude is the vector length:

$$|\mathbf{U}|=\sqrt{U_1^2+U_2^2+U_3^2}.$$

It is not the arithmetic sum of the components. Choose **U1** to inspect extension along the bar.

## 7. Read the U1 plot

![U1 contour increasing to approximately 0.003199 mm at the right end](images/General_ViewingInterpretingResults_img07_U1Result.png)

The displacement increases from approximately zero at the fixed end to $3.199\times10^{-3}$ at the loaded end.

The original input uses **N, mm and MPa**, so this displacement is in **mm**. ABAQUS does not attach an automatic unit system to the numbers you enter.

The contour plot interpolates displacement between the nodes. The model still consists of a single element.

## 8. Open the query tools

Choose **Tools → Query…** from the main menu.

![Tools menu with Query selected](images/General_ViewingInterpretingResults_img08_ToolsQueryMenu.png)

Select **Probe values** in the Query dialogue.

![Query dialogue with Probe values selected](images/General_ViewingInterpretingResults_img09_QueryProbeValues.png)

## 9. Probe nodal displacement

In **Probe Values**, change **Probe** to **Nodes**. With **U, U1** selected, click the node at each end of the bar.

![Probe Values table showing U1 at nodes 100 and 200](images/General_ViewingInterpretingResults_img10_ProbeValuesTable.png)

Node **100** is the fixed end. Node **200** is the loaded end. Read the **U, U1** column; the deformed-coordinate column is not the displacement itself.

The fixed-end value may be a very small numerical value rather than exactly zero. Record it as approximately zero with appropriate engineering precision.

For stress, select **S** and probe **Elements**, checking the selected component and output position.

## 10. Check the physics

For the unchanged example, $F=195$ N, $L=110$ mm, $A=45$ mm² and $E=149000$ N/mm².

$$u=\frac{FL}{EA}=\frac{195\times110}{149000\times45}\approx0.0031991\text{ mm}$$

$$\sigma=\frac{F}{A}\approx4.3333\text{ MPa}$$

The reaction at the fixed node should balance the applied load: **RF1 ≈ −195 N**. Select **RF, RF1** and probe node 100 to check it.

These values belong to `intro.inp`. They do not apply to the separate 5 kN bar in the Week 1 class activity.

## Check your interpretation

Which quantity gives the signed x-displacement in this example?

[( )] S, Mises.
[(X)] U1.
[( )] The displacement magnitude in every possible model.

Which unit belongs to the calculated tip displacement here?

[[mm]]

**Completion check:** record U1 at both nodes, the stress and the support reaction. Explain why the displacement and reaction have the signs you expect.

@[course(Return to the ABAQUS tutorial library)](../README.md)
