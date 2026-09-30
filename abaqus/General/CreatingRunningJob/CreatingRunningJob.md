<!--
author: Matthew Blacklock
email: matthew.blacklock@northumbria.ac.uk
version: 1.0.0
language: en
mode: Presentation
icon: ../../../logo.png
import: https://raw.githubusercontent.com/MINT-the-GAP/lia-board-mode/main/README.md
comment: Creating and running a job

script: ../../../course-links.js

@course: <a href="@1" data-lia-course="true">@0</a>
-->

# Creating and running a job

**Tutorial 3 of 4 · First used in Week 1 · Independent study or supported practice**

**LO**: In this tutorial, you will learn how to create and run an ABAQUS model from an input file.

**You need:** ABAQUS/CAE open with a writable work directory, and [intro.inp](../IntroToABAQUS/files/intro.inp) saved there. If needed, complete @[course(the setup tutorial)](../OpeningABAQUS/OpeningABAQUS.md) first.

@[course(ABAQUS tutorial library)](../README.md) · @[course(Week 1 lesson)](../../../week01/week01.md)

## 1. The main ABAQUS window

The main ABAQUS window contains quite a lot of options and information. The key features are:

![Main ABAQUS window with key features labelled](images/General_CreatingRunningJob_img01_MainWindowOverview.png)

You can either create a model using an input file or create the model within ABAQUS. When creating a model within ABAQUS, I personally use the Module dropdown menu. Start with **Part** and work your way down completing the necessary tasks in each module until you reach **Job**. We will cover creating a model within ABAQUS in a later tutorial.

For this tutorial, we will be using the [intro.inp](../IntroToABAQUS/files/intro.inp) file we downloaded earlier. This must be saved in your current work directory.

## 2. Running a pre-created input file

To run an input file that has already been created, click on the Module dropdown box that is currently set to **Part**. Then click on **Job**:

![Module dropdown with Job selected](images/General_CreatingRunningJob_img02_ModuleDropdownJob.png)

<br>

    {{1}}
***********************************
The sidebar will update. To create a job click the top left icon then change the source to Input file:

![Create Job dialogue with Input file source selected](images/General_CreatingRunningJob_img03_CreateJobSourceInputfile.png)
***********************************

<br>

    {{2}}
***********************************
Click the folder and locate a saved input file. Click OK and your file will appear in the textbox. Click *Continue...*:

![Create Job dialogue showing the selected input file](images/General_CreatingRunningJob_img04_SelectInputfileContinue.png)
***********************************

<br>

    {{3}}
***********************************
The *Edit Job* window will appear. Leave everything as the default and click *OK*:

![Edit Job window](images/General_CreatingRunningJob_img05_EditJobWindow.png)
***********************************

<br>

    {{4}}
***********************************
To view your jobs, click the *Job Manager* icon:

![Job Manager icon and window](images/General_CreatingRunningJob_img06_JobManagerIcon.png)

To run a job select it and click *Submit*. 
***********************************

<br>

    {{5}}
***********************************

The Status will change from **None** to **Submitted**, then **Running**, and finally **Completed**:

|  |  |  |
|:---------:|:-------:|:---------:|
| ![Job Manager with Submitted status](images/General_CreatingRunningJob_img07_StatusSubmitted.png) | ![Job Manager with Running status](images/General_CreatingRunningJob_img08_StatusRunning.png) | ![Job Manager with Completed status](images/General_CreatingRunningJob_img09_StatusCompleted.png) |

<br>

Once the job is completed, click *Results*.

Note: If there is anything incorrect in the way your model is set up, the status will read Aborted. This is common. Fixing errors in your model is an important skill you must learn.

<br>

@[course(Next tutorial: viewing and interpreting results)](../ViewingInterpretingResults/ViewingInterpretingResults.md)
***********************************