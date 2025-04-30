# AAC2M2P2 - 128x32 Single-Port RAM (VHDL)

## 📌 Description
This project implements a **128 x 32-bit single-port RAM** using VHDL for FPGA-based digital design coursework.

### 🛠 Features
- 128 memory locations (7-bit address space)
- 32-bit wide data
- Single-port memory with:
  - Clocked write
  - Combinational (unregistered) read output

### 💡 Notes
- Output `q` is not registered — this ensures a **combinational read**, as per assignment instructions.
- Input files and testbench are provided by the course for simulation in ModelSim.

## 📁 Files Included
- `AAC2M2P2.vhd` — VHDL code for the RAM.
- `AAC2M2P2_tb.vhdp` — VHDL testbench (provided by course).
- `vectorh.out` — Input vector file for simulation.
- `myvectorh.out` — Output from ModelSim after successful simulation.
- `README.md` — Project summary and details.

## 🧪 Simulation
Tested using **ModelSim** with provided testbench and input vectors.

## 📚 Context
This was created as part of the "FPGA Design for Embedded Systems" specialization from the University of Colorado Boulder (Coursera).

---