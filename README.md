# FPGA Portfolio

This repository showcases FPGA design modules implemented in **Verilog** and **VHDL**. Each module demonstrates core digital design concepts such as memory structures, finite state machines (FSMs), arithmetic logic units (ALUs), and FIFO buffers. 

Designed for learning and demonstration purposes, each project includes synthesizable code and supports comparison between Verilog and VHDL.

---

## 🧩 Modules Overview

### ▸ Problem 2: 128x32 Single-Port RAM
- **Verilog**: `AAC2M4P2_SinglePortRAM_Verilog/AAC2M4P2.v`
- **VHDL**: `AAC2M2P2_SinglePortRAM_VHDL/AAC2M4P2.vhd`
- 💡 *Implements synchronous read/write RAM with 128 words of 32-bit width.*

---

### ▸ Problem 3: Finite State Machine (FSM)
- **Verilog**: `AAC2M4P3_StateMachine_Verilog/AAC2M4P3.v`
- **VHDL**: `AAC2M2P3_StateMachine_VHDL/AAC2M4P3.vhd`
- 💡 *Implements a simple FSM demonstrating state transitions and control logic.*

---

### ▸ Problem 4: 8-Operation ALU
- **Verilog**: `AAC2M4H1_ALU_Verilog/AAC2M4H1.v`
- **VHDL**: `AAC2M4H1_ALU_VHDL/AAC2M4H1.vhd`
- 💡 *Performs 8 operations including addition, subtraction, bitwise AND/OR, and increment/decrement.*

---

### ▸ Problem 5: 8x9 FIFO Memory
- **Verilog**: `AAC2M4H2_FIFO8x9_Verilog/AAC2M4H2.v`
- **VHDL**: `AAC2M4H2_FIFO8x9_VHDL/AAC2M4H2.vhd`
- 💡 *Implements an 8-word deep, 9-bit wide FIFO with pointer-based read/write control.*

---

## 📂 Repository Structure

```plaintext
FPGA-Portfolio/
├── AAC2M2P2_SinglePortRAM_VHDL/       # VHDL: 128x32 Single-Port RAM
├── AAC2M2P3_StateMachine_VHDL/        # VHDL: Simple FSM
├── AAC2M4H1_ALU_VHDL/                 # VHDL: 8-Operation ALU
├── AAC2M4H1_ALU_Verilog/              # Verilog: 8-Operation ALU
├── AAC2M4H2_FIFO8x9_VHDL/             # VHDL: 8x9 FIFO Memory
├── AAC2M4H2_FIFO8x9_Verilog/          # Verilog: 8x9 FIFO Memory
├── AAC2M4P2_SinglePortRAM_Verilog/    # Verilog: 128x32 Single-Port RAM
├── AAC2M4P3_StateMachine_Verilog/     # Verilog: Simple FSM
└── README.md
