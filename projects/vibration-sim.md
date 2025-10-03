---
layout: default
title: Vibrational String Simulation
---

# Vibrational String Simulation

📅 Date: May 2025  
🛠 Tools: Python, NumPy, Matplotlib  
📁 Type: Numerical Simulation

## 🔍 Overview
This project models wave propagation and standing wave formation on a vibrating string using the 1D wave equation.  
I implemented both **explicit** and **Crank–Nicolson implicit** finite difference methods to simulate propagation, reflection, and numerical damping.

## ⚙️ Technical Highlights
- Solved the wave PDE with finite difference methods
- Applied Dirichlet boundary conditions and harmonic initial excitation
- Compared explicit vs. implicit schemes under different CFL conditions
- Visualized divergence, phase behavior, and damping effects

## 📽️ Animation Comparisons

### 🔷 Explicit Method

<video width="100%" controls>
  <source src="../assets/vibration-sim/explicit-solution.mp4" type="video/mp4">
  Your browser does not support the video tag. You can <a href="../assets/vibration-sim/explicit-solution.mp4">download the video here</a>.
</video>

### 🔶 Implicit Method (Crank–Nicolson)

<video width="100%" controls>
  <source src="../assets/vibration-sim/implicit-solution.mp4" type="video/mp4">
  Your browser does not support the video tag. You can <a href="../assets/vibration-sim/implicit-solution.mp4">download the video here</a>.
</video>

## 📄 Full Report

[📝 Download PDF Report](../assets/vibration-sim/vibration-sim-report.pdf)

## 🔗 Code Repository

[💻 View Source Code on GitHub](https://github.com/SJSUNJET/vibration-sim)
