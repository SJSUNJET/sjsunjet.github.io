---
layout: default
title: FEA-Carbon Fiber Composites
---

# Static Structural Analysis of the 3.0 Gen Imperial Eco-Marathon Vehicle Top Shell

📅 Date: May 2025  
🛠 Tools: Python, NumPy, Matplotlib  
📁 Type: Numerical Simulation

## Overview
Conducted finite element analysis (FEA) using ANSYS ACP(Pre) and Static Structural modules to assess the stiffness and safety of the carbon-fiber composite top shell under structural loads.

## Objectives 
Evaluate the structural response of the top-opening door section of the carbon-fiber top shell under localized loading representative of driver entry/exit. 
- Validate the design can withstand concentrated forces 
- Check maximum deformation.
- Identify high-stress regions to guide structural reinforcement.

## Methodology
### ACP(Pre) – Composite Definition
Workflow:
1.	Define material in Engineering data
2.	Create Fabrics (Define thickness of carbon layer)
3.	Create Stackups (Layers of carbon fibre with different orientations)
4.	Define element sets to help create oriented selection sets
5.	Define necessary rosettes to be used as fibre reference directions in oriented selection sets
6.	Create Orientation selection set for components sharing the same fibre definition
7.	Apply Stackup materials by creating modelling groups

## 📄 Project Document of FEA Results and Setup Guidance (Building...)

[📝 Download Project Document](../assets/CFRP-fea/FEA_Project-Document.docx)