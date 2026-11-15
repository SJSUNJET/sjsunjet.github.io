---
layout: project
title: FEA — Carbon Fibre Composite Top Shell
headline: Static Structural Analysis of the Eco-Marathon CFRP Monocoque & Top Shell
subtitle: Composite laminate optimization in ANSYS ACP (Pre) and ANSYS Mechanical, reducing composite skin layup from 5 to 2 layers and achieving a 40% (8 kg) monocoque mass reduction.
category: Composite Structures & FEA
date_label: Sep 2023 – Jun 2026
context: Imperial Eco-Marathon Team (Shell Global Competition)
tools: ANSYS Mechanical, ANSYS ACP (Pre), Static Structural FEA
metrics:
  - value: "-40% (8 kg)"
    label: "Monocoque Mass Reduction via Data-Driven FEA Optimization"
  - value: "5 → 2 Plies"
    label: "Composite Skin Layup Reduction (ANSYS ACP)"
  - value: "230 GPa"
    label: "Epoxy Carbon Woven Skin + 60 kg/m³ PVC Foam Core"
  - value: "0° / 90°"
    label: "Orthogonal Ply Stackups with Edge-Guided Rosettes"
---

## 1. Project Overview & Objectives

Conducted finite element analyses (FEA) using **ANSYS Composite PrepPost — ACP (Pre)** and **ANSYS Mechanical (Static Structural)** for the **Imperial Eco-Marathon Team (Shell Global Competition)** to redesign the carbon-fibre monocoque and validate the 3.0 Generation composite top shell under multi-case structural loading and localized driver entry/exit forces.

During driver ingress, egress, and operational load cases, the top-opening cockpit door periphery and longitudinal sill ribs experience concentrated bending and shear loads. The primary objectives of this study were to:

- **Reduce vehicle mass without compromising stiffness:** Use data-driven FEA optimization to trim unnecessary plies (reducing composite skin layup from **5 down to 2 layers**) and achieve a **40% overall monocoque mass reduction (8 kg)** while improving stiffness-to-weight ratio.
- **Evaluate global and localized deformation:** Verify compliance and structural deformation limits across the upper shell and internal stiffening ribs under multi-case loading conditions.
- **Identify stress/strain hotspots:** Pinpoint critical rib-to-sill junctions to guide targeted local reinforcement while collaborating across mechanical, aero, and electronics sub-teams within tight vehicle packaging constraints.

---

## 2. Composite Laminate Methodology in ANSYS ACP (Pre)

To accurately capture the orthotropic behaviour of the carbon-fibre reinforced polymer (CFRP) sandwich structure, the shell and rib laminates were built ply-by-ply inside **ANSYS ACP (Pre)** following a structured composite workflow:

1. **Engineering Material Definition:** Configured orthotropic **Epoxy Carbon Woven (230 GPa) Wet** prepreg/wet-layup skins paired with an isotropic **PVC Foam ($60\text{ kg/m}^3$)** structural sandwich core.
2. **Fabric & Stackup Creation:** Defined single-ply fabric thicknesses and assembled multi-layer stackups (`3-layer Outer Shell` laminate and `2-layer CF Orthogonal` rib reinforcements).
3. **Element Sets Partitioning:** Partitioned the shell geometry into functional structural zones (`TopShell_OuterSkin`, `TopShell_RearCover`, `TopShell_FrontFacing`, `TopShell_RearFacing`, `TopShell_FrontLongRib`, and `TopShell_BottomFacingLip`).
4. **Coordinate & Edge Rosettes:** Established global and edge-guided rosettes (`Front Vertical`, `RearCover Edge`, `FrontLongRib Edge`, and `BottomEdge Rosettes 1–5`) to control local $0^\circ$ fibre alignment along curved aerodynamic contours.
5. **Oriented Selection Sets (OSS) & Modeling Groups:** Assigned layup normal vectors and fibre reference directions to each element set before generating the 3D composite ply layup.

<div class="figure-grid">
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig1-acp-tree-1.png" alt="ANSYS ACP Pre object tree showing Material Data, Fabrics, Stackups, and Element Sets" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 1a.</strong> ANSYS ACP (Pre) model tree illustrating Material Data (230 GPa woven carbon &amp; PVC foam), Stackups, and partitioned Element Sets.
    </figcaption>
  </figure>
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig1-acp-tree-2.png" alt="ANSYS ACP Pre object tree showing Rosettes, Oriented Selection Sets, and Carbon Skin Modeling Groups" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 1b.</strong> Rosette coordinate definitions, Oriented Selection Sets (OSS), and the resulting Carbon Skins Modeling Group hierarchy.
    </figcaption>
  </figure>
</div>

---

### Oriented Selection Sets (OSS) & Layup Normals

In ANSYS ACP (Pre), the **orientation direction** of an Oriented Selection Set dictates the stacking direction (offset normal) of successive carbon plies. Because internal transverse and longitudinal ribs feature opposing geometric normals, forward-facing and rear-facing rib surfaces were separated into dedicated OSS groups (`TopShell_RearFacing` and `TopShell_FrontFacing`) to guarantee consistent inward/outward laminate build directions.

<div class="figure-grid">
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig2-oss-forward.png" alt="Forward/rear-facing ply orientation vectors on internal ribs in ANSYS ACP" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 2a.</strong> Ply-wise orientation vectors for the rear-facing rib selection set (<code>OSS - TopShell_RearFacing</code>).
    </figcaption>
  </figure>
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig2-oss-backward.png" alt="Opposing ply orientation vectors on front-facing internal ribs in ANSYS ACP" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 2b.</strong> Opposing ply-wise orientation vectors for the front-facing rib selection set (<code>OSS - TopShell_FrontFacing</code>).
    </figcaption>
  </figure>
</div>

<figure class="figure-card">
  <img src="../assets/CFRP-fea/images/fig3-outer-skin-layup.png" alt="Outer aerodynamic shell skin normal orientation vectors in ANSYS ACP" loading="lazy">
  <figcaption class="figure-caption">
    <strong>Figure 3.</strong> Uniform outward ply stacking normal vectors defined across the primary aerodynamic outer shell skin (<code>OSS - Outer Shell</code>).
  </figcaption>
</figure>

---

### Fibre Alignment & Reference Directions ($0^\circ / 90^\circ$)

Within each Oriented Selection Set, the **reference direction** (governed by its linked Rosette) establishes the primary $0^\circ$ warp fibre trajectory and orthogonal $90^\circ$ weft direction. Edge rosettes were mapped along the cockpit sill and rear bulkhead perimeter so that primary carbon fibres run continuously along the principal bending and tension paths.

<div class="figure-grid">
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig4-rosette-0deg.png" alt="Fibre direction vectors along the rear cover cone in ANSYS ACP" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 4a.</strong> Ply-wise fibre direction vectors aligned along the rear bulkhead and tail cone (<code>MP - RearCover</code>).
    </figcaption>
  </figure>
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig4-rosette-90deg.png" alt="Orthogonal 0 and 90 degree fibre alignment vectors across the outer shell layer" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 4b.</strong> Orthogonal $0^\circ$ and $90^\circ$ fibre alignment trajectories mapped across the outer shell skin and cockpit aperture frame (<code>MP - Outer shell layer</code>).
    </figcaption>
  </figure>
</div>

---

## 3. Solid Core Modelling & Adaptive Meshing

The structural stiffening ribs and rear bulkhead incorporate a lightweight **PVC foam core** enclosed by the carbon-fibre skins. In ANSYS Mechanical, the solid core geometry was discretized using **adaptive mesh sizing**—maintaining high element quality and aspect-ratio control around narrow rib intersections and cockpit cutout fillets while avoiding excessive element counts in uniform bulkhead zones.

<figure class="figure-card">
  <img src="../assets/CFRP-fea/images/fig5-solid-mesh.png" alt="Finite element mesh of the internal PVC foam ribs and rear bulkhead in ANSYS Mechanical" loading="lazy">
  <figcaption class="figure-caption">
    <strong>Figure 5.</strong> Adaptive finite element mesh of the internal PVC foam structural ribs, cockpit frame rails, and rear bulkhead disc.
  </figcaption>
</figure>

---

## 4. Static Structural Results & Hotspot Identification

The composite shell assembly was evaluated in **ANSYS Static Structural** under localized loading representative of driver entry and exit along the cockpit aperture rail:

- **Global Deformation Behaviour:** Total deformation remains well within structural clearance tolerances across the aerodynamic canopy, confirming that the sandwich rib architecture effectively resists cockpit frame racking and buckling.
- **Localized Hotspot Identification:** Detailed contour inspection along the lower cockpit sill cut-outs pinpointed the primary bending deflection and stress concentration zone at the central longitudinal rib junction, directly informing targeted local ply reinforcement.

<div class="figure-grid">
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig6-deformation-result.png" alt="Full-shell total deformation contour plot in ANSYS Static Structural" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 6.</strong> Full-shell total deformation contour plot under localized cockpit sill loading, showing minimal deflection across the nose and tail sections and controlled compliance along the door aperture rail.
    </figcaption>
  </figure>
  <figure class="figure-card">
    <img src="../assets/CFRP-fea/images/fig7-stress-hotspots.png" alt="Close-up contour plot highlighting localized deformation and stress hotspots along the lower cockpit rib cutouts" loading="lazy">
    <figcaption class="figure-caption">
      <strong>Figure 7.</strong> Close-up view of the critical rib-to-sill junction hotspot identified for targeted carbon-fibre patch reinforcement.
    </figcaption>
  </figure>
</div>

---

## 5. Validation & Engineering Impact

- **Weight & Stiffness Optimization:** Executing iterative static structural FEA in ANSYS Mechanical and ANSYS ACP reduced composite skin layups from **5 to 2 layers**, contributing to a **40% overall monocoque mass reduction (8 kg)** with an improved stiffness-to-weight ratio while satisfying strict structural deformation limits across loading conditions.
- **Multidisciplinary Packaging Integration:** Worked closely across mechanical, aerodynamics, and electronics sub-teams to maintain internal component clearance and structural stiffness around driver ingress/egress cockpit cutouts.
- **Verification Workflow:** Combined mesh refinement checks at rib fillets with orthogonal rosette alignment validation on the carbon-epoxy sandwich stackups.
