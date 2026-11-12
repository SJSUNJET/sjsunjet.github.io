---
layout: project
title: Vibrational String Simulation
headline: 1D Wave Equation — Explicit vs. Crank–Nicolson Implicit Simulation
subtitle: Numerical investigation of wave propagation, boundary reflections, and Courant–Friedrichs–Lewy (CFL) stability limits on a vibrating string.
category: Computational Mechanics & PDEs
date_label: May 2025
context: Imperial College London · Numerical Methods
tools: Python, NumPy, Matplotlib, SciPy
metrics:
  - value: "1D Wave PDE"
    label: "Hyperbolic Partial Differential Equation Solver"
  - value: "CFL ≤ 1 vs. ∞"
    label: "Conditional Explicit vs. Unconditional Implicit Stability"
  - value: "O(Δt², Δx²)"
    label: "Second-Order Accurate Central & Crank–Nicolson Schemes"
---

## 1. Overview & Mathematical Formulation

This project models transverse wave propagation and standing wave formation along a taut vibrating string governed by the second-order hyperbolic **1D wave equation**:

$$\frac{\partial^2 u}{\partial t^2} = c^2 \frac{\partial^2 u}{\partial x^2}$$

I implemented and benchmarked both **explicit central-difference** and **Crank–Nicolson implicit** finite-difference time-stepping schemes in Python to investigate wave reflection, phase dispersion, numerical damping, and Courant–Friedrichs–Lewy ($\text{CFL} = c\Delta t / \Delta x$) stability boundaries.

---

## 2. Technical Highlights

- **Discretization & Linear System Assembly:** Formulated the explicit 3-level time stencil alongside the implicit Crank–Nicolson tridiagonal matrix system solved at each time step.
- **Boundary & Initial Conditions:** Applied fixed **Dirichlet boundary conditions** at the string endpoints paired with harmonic and plucked initial excitations.
- **Stability & Dispersion Analysis:** Evaluated explicit divergence when $\text{CFL} > 1$ against the unconditionally stable Crank–Nicolson scheme across varying spatial and temporal step ratios.
- **Automated Visualization Pipeline:** Built a custom `Matplotlib` animation pipeline to render real-time waveform evolution and phase comparisons.

---

## 3. Animation Comparisons

<div class="figure-grid">
  <figure class="figure-card">
    <div class="video-crop-clean">
      <video width="100%" src="../assets/vibration-sim/explicit-solution.mp4#t=4,33" data-start="4" data-end="33" autoplay muted loop playsinline controls preload="auto">
        <source src="../assets/vibration-sim/explicit-solution.mp4#t=4,33" type="video/mp4">
        Your browser does not support the video tag. <a href="../assets/vibration-sim/explicit-solution.mp4">Download video</a>.
      </video>
    </div>
    <figcaption class="figure-caption">
      <strong>Explicit Central-Difference Method:</strong> Fast direct time-marching per step, subject to the strict Courant stability limit ($\text{CFL} \le 1$).
    </figcaption>
  </figure>

  <figure class="figure-card">
    <div class="video-crop-clean">
      <video width="100%" src="../assets/vibration-sim/implicit-solution.mp4#t=8,158" data-start="8" data-end="158" autoplay muted loop playsinline controls preload="auto">
        <source src="../assets/vibration-sim/implicit-solution.mp4#t=8,158" type="video/mp4">
        Your browser does not support the video tag. <a href="../assets/vibration-sim/implicit-solution.mp4">Download video</a>.
      </video>
    </div>
    <figcaption class="figure-caption">
      <strong>Implicit Crank–Nicolson Method:</strong> Solves a coupled linear system at each step to guarantee unconditional numerical stability across larger time steps.
    </figcaption>
  </figure>
</div>

---

## 4. Full Report & Source Code

<div class="cta-row" style="margin-top: 1.5rem;">
  <a class="btn-apple btn-primary" href="../assets/vibration-sim/vibration-sim-report.pdf" target="_blank" rel="noopener">
    📄 View Full PDF Report
  </a>
  <a class="btn-apple btn-secondary" href="https://github.com/SJSUNJET/vibration-sim" target="_blank" rel="noopener">
    💻 View Source Code on GitHub
  </a>
</div>
