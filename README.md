# CDIN1-Codanin-1 complex defective in congenital dyserythropoietic anaemia type I is an RNA nuclease

This repository contains the input files and results for the molecular dynamics (MD) simulations, and experimental files used in the manuscript:

```bibtex
@article{brolih2026cdin1,
title = {CDIN1-Codanin-1 complex defective in congenital dyserythropoietic anaemia type I is an RNA nuclease},
author = {Sanja Brolih, Hafiz Saqib Ali, Caroline Scott, Aude-Anais Olijnik, Hazel Aitkenhead, Gemma Moir-Meyer, Angeline E. Gavard, Yuliana Yosaatmadja, Douglas R. Higgs, Veronica Buckle, Noemi Roy, Opher Gileadi, Joseph A. Newman, Fernanda Duarte, Christian Babbs and Peter J. McHugh},
journal = {Nature Communications},
year = {2026},
issn = {2041-1723},
doi = {https://doi.org/10.1038/s41467-026-74766-7},
url = {https://www.nature.com/articles/s41467-026-74766-7},
}```


```
# Repository Structure
```

CDIN1-Codanin1-RNA-Nuclease/
├── Experimental_data/
│   ├── FP Data/
│   ├── ITC Data/
│   ├── SEC Data/
│   └── SPR Data/
│
├── Force-Field_files/
│   ├── Protein/
│   ├── DNA-RNA/
│   ├── Ions/
│   ├── Water/
│   ├── Libraries/
│   └── Parameters/
│
├── MD-input_files/
│   ├── Minimization/
│   ├── Heating/
│   ├── Equilibration/
│   ├── Production/
│   └── Restart/
│
└── Systems_files/
    ├── 2Mg-CDIN1_DNA-RNA/
    ├── C-terminal_Codanin-1/
    ├── CDIN1/
    ├── CDIN1_DNA-RNA/
    ├── CDIN1_L178Q/
    ├── CDIN1_Y94C/
    ├── Codanine-1_CDIN1/
    ├── Codanine-1_CDIN1_L178Q/
    ├── Codanine-1_CDIN1_RNA-DNA/
    ├── Codanine-1_CDIN1_Y94C/
    ├── Full-length_Codanin-1/
    ├── Mg-CDIN1_DNA-RNA/
    ├── Mg_CDIN1_mutatnt/
    └── Mg_CDIN1_wild/
    

## Directory Overview

### **Experimental_data/**
Contains all experimental datasets used for biochemical characterization and validation of the computational studies.

- **FP Data/** – Fluorescence Polarization (FP) measurements.
- **ITC Data/** – Isothermal Titration Calorimetry (ITC) data.
- **SEC Data/** – Size Exclusion Chromatography (SEC) chromatograms.
- **SPR Data/** – Surface Plasmon Resonance (SPR) binding data.

---

### **Force-Field_files/**
Contains all force-field files required for system preparation and molecular dynamics simulations.

Typical contents include:

- Protein force fields
- DNA/RNA force fields
- Ion parameters
- Water models

---

### MD-input_files/**
Contains the AMBER input (`.in`) files used during molecular dynamics simulations.

Typical stages include:

- Energy minimization
- Heating
- Equilibration
- Production MD
- Restart simulations

---

### **Systems_files/**
Contains all prepared molecular systems used in this study.

Available systems include:

- **2Mg-CDIN1_DNA-RNA/** – CDIN1–RNA/DNA complex with two catalytic Mg²⁺ ions.
- **C-terminal_Codanin-1/** – Isolated C-terminal domain of Codanin-1.
- **CDIN1/** – Wild-type CDIN1.
- **CDIN1_DNA-RNA/** – CDIN1 bound to the RNA/DNA substrate.
- **CDIN1_L178Q/** – CDIN1 L178Q mutant.
- **CDIN1_Y94C/** – CDIN1 Y94C mutant.
- **Codanine-1_CDIN1/** – Wild-type Codanin-1–CDIN1 complex.
- **Codanine-1_CDIN1_L178Q/** – Complex containing the CDIN1 L178Q mutant.
- **Codanine-1_CDIN1_RNA-DNA/** – Ternary Codanin-1–CDIN1–RNA/DNA complex.
- **Codanine-1_CDIN1_Y94C/** – Complex containing the CDIN1 Y94C mutant.
- **Full-length_Codanin-1/** – Full-length Codanin-1 simulation system.
- **Mg-CDIN1_DNA-RNA/** – CDIN1–RNA/DNA complex with one catalytic Mg²⁺ ion.
- **Mg_CDIN1_mutatnt/** – Magnesium-bound mutant CDIN1 system.
- **Mg_CDIN1_wild/** – Magnesium-bound wild-type CDIN1 system.
