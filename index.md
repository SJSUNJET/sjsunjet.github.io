---
layout: default
title: Home
---

<section class="hero-section">
  <div class="eyebrow">Imperial College London · MEng Mechanical Engineering (Sep 2023 – Jun 2027)</div>
  <h1 class="hero-title">Stan (Shuo-Chun) Sun</h1>
  <p class="hero-subtitle">
    MEng Mechanical Engineering student (75.95% Year 3 standing, First Class Honours track) and former Product Design Engineer Intern at Google. Specializing in multibody dynamics (Siemens NX Motion), composite structural FEA (ANSYS ACP), precision CAD, and Python data workflows.
  </p>

  <div class="pill-row" aria-label="Core Focus Areas">
    <span class="skill-pill">📐 CAD (SolidWorks · Siemens NX · Fusion 360)</span>
    <span class="skill-pill">⚙️ Multibody Dynamics (NX Motion)</span>
    <span class="skill-pill">📊 FEA (ANSYS Mechanical &amp; ACP · Abaqus · SolidWorks)</span>
    <span class="skill-pill">🐍 Python &amp; MATLAB Data Processing</span>
  </div>

  <div class="cta-row">
    <a class="btn-apple btn-primary" href="#experience">Experience Highlight</a>
    <a class="btn-apple btn-secondary" href="#projects">Explore Projects</a>
    <a class="btn-apple btn-secondary" href="./assets/cv/CV.Shuo-Chun%20Sun_2026.11.15_Public.pdf" target="_blank" rel="noopener">Download CV (PDF)</a>
    <a class="btn-apple btn-secondary" href="https://www.linkedin.com/in/shuo-chun-sun-43a850292" target="_blank" rel="noopener">LinkedIn</a>
    <a class="btn-apple btn-secondary" href="https://github.com/SJSUNJET" target="_blank" rel="noopener">GitHub</a>
    <a class="btn-apple btn-secondary" href="mailto:ss10323@ic.ac.uk">Email</a>
  </div>
</section>

<section id="experience">
  <div class="section-header">
    <h2>Experience Highlight</h2>
    <span>Industry Internship · Jun 2026 – Sep 2026</span>
  </div>

  <div class="highlight-card">
    <div class="highlight-card-header">
      <div>
        <div class="eyebrow" style="margin-bottom: 0.6rem;">Google · Product Design Internship</div>
        <h3 class="highlight-role">Product Design Engineer Intern</h3>
        <div class="highlight-meta">Google · Jun 2026 – Sep 2026</div>
      </div>
    </div>

    <div class="highlight-metrics-row">
      <div class="highlight-metric-tile">
        <div class="metric-value">NX MBD</div>
        <div class="metric-label">Dynamic torque modeling of spring-cam foldable hinge mechanisms in Siemens NX</div>
      </div>
      <div class="highlight-metric-tile">
        <div class="metric-value">&lt; 15%</div>
        <div class="metric-label">Torque output deviation vs. experimental data across ±10% parameter shifts</div>
      </div>
      <div class="highlight-metric-tile">
        <div class="metric-value">Python</div>
        <div class="metric-label">Noise-filtering simulation workflows &amp; standardised team simulation guide</div>
      </div>
    </div>

    <ul class="highlight-bullets">
      <li>Simulated dynamic torque profiles for foldable smartphone hinges by constructing <strong>multibody dynamics (MBD) models</strong> for complex spring-cam mechanisms in <strong>Siemens NX</strong>.</li>
      <li>Formulated a <strong>dimensionless numerical sensitivity study</strong> to quantify torque output variance across <strong>±10% parameter shifts</strong>, achieving <strong>&lt;15% deviation</strong> against experimental torque data.</li>
      <li>Built data processing workflows with <strong>Python</strong> to filter signal noise and process simulation data, authoring a <strong>standardised simulation guide</strong> for the engineering team.</li>
    </ul>

    <div class="project-card-tags" style="padding-top: 0.85rem;">
      <span class="tag-chip">Siemens NX</span>
      <span class="tag-chip">NX Motion (MBD)</span>
      <span class="tag-chip">Spring-Cam Mechanisms</span>
      <span class="tag-chip">Numerical Sensitivity Study</span>
      <span class="tag-chip">Python (Data Processing)</span>
      <span class="tag-chip">Simulation Standardization</span>
    </div>
  </div>
</section>

<section id="projects">
  <div class="section-header">
    <h2>Featured Engineering Projects</h2>
    <span>Click any card to view methodology, figures &amp; outcomes</span>
  </div>

  <div class="projects-grid">

    <!-- Card 1: ME3 DMT Rocket Recovery System -->
    <a class="project-card" href="./projects/me3-dmt.html">
      <div class="project-card-media media-contain">
        <img src="./assets/me3-dmt/recovery-module-horizontal.png" alt="Manufactured two-stage rocket parachute recovery module with anodized aluminum formers and 3D-printed nose cone" loading="lazy">
        <span class="card-badge-overlay">Aerospace &amp; Mechatronics</span>
      </div>
      <div class="project-card-body">
        <div class="project-card-meta">Rocket Parachute Recovery System · Sep 2025 – Jun 2026</div>
        <h3 class="project-card-title">Two-Stage Electromechanical Rocket Recovery Module</h3>
        <p class="project-card-desc">
          Co-led a 4-person team to design, manufacture, and qualify a dual-stage electromechanical parachute recovery module for a high-power rocket. Reduced bulkhead weight by 30% under 6 kN deployment shock loads via iterative FEA optimization, and designed shaker vibration experiments diagnosing an 1883 Hz resonance via Python.
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
        <div class="project-card-meta">Imperial Eco-Marathon Team · Sep 2023 – Jun 2026</div>
        <h3 class="project-card-title">Carbon-Fibre Monocoque &amp; Top Shell FEA Optimization</h3>
        <p class="project-card-desc">
          Redesigned carbon-fibre composite structures for the Shell Global Competition vehicle using ANSYS Mechanical and ANSYS ACP, achieving a 40% monocoque mass reduction (8 kg) and reducing composite skin layup from 5 to 2 layers under multi-case loading conditions.
        </p>
        <div class="project-card-tags">
          <span class="tag-chip">ANSYS Mechanical &amp; ACP</span>
          <span class="tag-chip">Static Structural</span>
          <span class="tag-chip">40% Mass Reduction (8 kg)</span>
          <span class="tag-chip">5 → 2 Layer CFRP Optimization</span>
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
