---
layout: default
title: Home
---

<section class="hero-section">
  <div class="eyebrow">Imperial College London · Mechanical Engineering</div>
  <h1 class="hero-title">Stan (Shuo-Chun) Sun</h1>
  <p class="hero-subtitle">
    Mechanical Engineering student specializing in structural composites, computational mechanics, and mechatronic system design. Building rigorous simulations and physical hardware from first principles.
  </p>

  <div class="pill-row" aria-label="Core Focus Areas">
    <span class="skill-pill">🚗 Mechatronics &amp; Embedded Systems</span>
    <span class="skill-pill">📈 Computational PDE &amp; Numerical Simulation</span>
    <span class="skill-pill">🛠 CAD &amp; Composite FEA (ANSYS ACP)</span>
    <span class="skill-pill">🤖 Robotics, Dynamics &amp; Control</span>
  </div>

  <div class="cta-row">
    <a class="btn-apple btn-primary" href="#projects">Explore Projects</a>
    <a class="btn-apple btn-secondary" href="./assets/cv/Stan_Sun_CV.pdf" target="_blank" rel="noopener">Download CV (PDF)</a>
    <a class="btn-apple btn-secondary" href="https://www.linkedin.com/in/shuo-chun-sun-43a850292" target="_blank" rel="noopener">LinkedIn</a>
    <a class="btn-apple btn-secondary" href="https://github.com/SJSUNJET" target="_blank" rel="noopener">GitHub</a>
    <a class="btn-apple btn-secondary" href="mailto:stansun1022@gmail.com">Email</a>
  </div>
</section>

<section id="projects">
  <div class="section-header">
    <h2>Featured Engineering Projects</h2>
    <span>Click any card to view methodology, figures &amp; reports</span>
  </div>

  <div class="projects-grid">

    <!-- Card 1: ME3 DMT Rocket Recovery System -->
    <a class="project-card" href="./projects/me3-dmt.html">
      <div class="project-card-media media-contain">
        <img src="./assets/me3-dmt/recovery-module-horizontal.png" alt="Manufactured two-stage rocket parachute recovery module with anodized aluminum formers and 3D-printed nose cone" loading="lazy">
        <span class="card-badge-overlay">Aerospace &amp; Mechatronics</span>
      </div>
      <div class="project-card-body">
        <div class="project-card-meta">ME3 Design, Make &amp; Test · Oct 2025 – Jun 2026</div>
        <h3 class="project-card-title">Two-Stage Electromechanical Rocket Recovery Module</h3>
        <p class="project-card-desc">
          Co-led a 4-person team to design, manufacture, and qualify the dual-stage electromechanical parachute recovery module for a competition rocket superproject. Sized the CNC bulkhead via static FEA shape optimization (-30% weight reduction under 6 kN shock) and planned dynamic vibration qualification tests, diagnosing a critical 1883 Hz cross-axis resonance via Python data processing.
        </p>
        <div class="project-card-tags">
          <span class="tag-chip">CAD &amp; Assembly BOM</span>
          <span class="tag-chip">Static FEA Optimization</span>
          <span class="tag-chip">Vibration Testing</span>
          <span class="tag-chip">Python (Data Processing)</span>
          <span class="tag-chip">Metal &amp; 3D-Printed Prototyping</span>
        </div>
      </div>
    </a>

    <!-- Card 2: CFRP FEA -->
    <a class="project-card" href="./projects/CFRP-fea.html">
      <div class="project-card-media">
        <img src="./assets/CFRP-fea/images/fig6-deformation-result.png" alt="ANSYS Static Structural total deformation contour plot of the Imperial Eco-Marathon carbon-fibre top shell" loading="lazy">
        <span class="card-badge-overlay">Composite FEA</span>
      </div>
      <div class="project-card-body">
        <div class="project-card-meta">Imperial Eco-Marathon · Oct 2024 – Aug 2025</div>
        <h3 class="project-card-title">Static Structural Analysis of 3.0 Gen CFRP Vehicle Top Shell</h3>
        <p class="project-card-desc">
          Modelled multi-ply woven carbon-fibre skins and a PVC foam sandwich core in ANSYS ACP (Pre) and Static Structural to evaluate cockpit door stiffness under driver entry/exit loads, achieving ~5% shell mass reduction.
        </p>
        <div class="project-card-tags">
          <span class="tag-chip">ANSYS ACP (Pre)</span>
          <span class="tag-chip">Static Structural</span>
          <span class="tag-chip">CFRP Sandwich Layup</span>
          <span class="tag-chip">Solid-Shell Meshing</span>
        </div>
      </div>
    </a>

    <!-- Card 3: Vibrational String Simulation -->
    <a class="project-card" href="./projects/vibration-sim.html">
      <div class="project-card-media video-crop-clean">
        <video src="./assets/vibration-sim/explicit-solution.mp4#t=4,33" data-start="4" data-end="33" autoplay muted loop playsinline preload="auto"></video>
        <span class="card-badge-overlay">Numerical PDE</span>
      </div>
      <div class="project-card-body">
        <div class="project-card-meta">Computational Mechanics · May 2025</div>
        <h3 class="project-card-title">1D Wave Equation: Explicit vs. Crank–Nicolson Implicit Solver</h3>
        <p class="project-card-desc">
          Implemented explicit central-difference and unconditionally stable Crank–Nicolson implicit finite-difference schemes in Python to analyze wave propagation, Dirichlet boundary reflections, and CFL stability limits.
        </p>
        <div class="project-card-tags">
          <span class="tag-chip">Python</span>
          <span class="tag-chip">NumPy</span>
          <span class="tag-chip">Matplotlib</span>
          <span class="tag-chip">Finite Difference PDE</span>
        </div>
      </div>
    </a>

  </div>
</section>
