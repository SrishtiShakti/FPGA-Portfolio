# FPGA 7-Segment Display Simulation (Without Physical Board)

## Overview
This project implements a **binary-coded decimal (BCD) to 7-segment display** conversion using VHDL, simulating a two-digit display (HEX0 & HEX1). The design converts **switch values (SW7-0)** into corresponding 7-segment outputs and verifies correctness using **ModelSim simulation** and **vectorh.out file generation**, all **without needing an FPGA board**.

## Features
✅ Binary-to-decimal conversion  
✅ 7-segment display logic (HEX0 & HEX1)  
✅ VHDL-based functional simulation  
✅ Exhaustive test bench covering all 256 input cases  
✅ Generates `vectorh.out` file with full input-output mapping  
✅ Includes ModelSim waveform setup (`wave.do`)  
✅ Project structure maintained with `.qpf` file  

## Files Included
| File Name         | Description |
|------------------|------------|
| `C4M1P1.vhd`     | BCD to 7-segment conversion logic |
| `tb_C4M1P1.vhd`  | To validate all possible inputs |
| `vectorh.out`    | Output file storing simulated results |
| `wave.do`        | ModelSim script for waveform setup |
| `waveform_screenshot.png` | Screenshot of the simulation results |
| `C4M1P1.qpf`     | **Quartus Prime Project File** storing project settings |
| `README.md`      | Documentation for project setup |

## Setup Instructions
### **1️⃣ Add Files to Quartus Prime**
- Open **Quartus Prime** and create a new project.
- Add `C4M1P1.vhd` as the **main entity**.
- Add `tb_C4M1P1.vhd` for **simulation testing**.
- Set `C4M1P1.vhd` as the **top-level entity**.

### **2️⃣ Compile the Project**
- Run **Processing → Start Compilation** in Quartus.
- Ensure **no errors or warnings** are present.

### **3️⃣ Run ModelSim Simulation**
- Open **ModelSim-Altera**.
- Navigate to the project folder.
- Run:
  ```tcl
  vsim tb_C4M1P1
  do wave.do
  run -all
