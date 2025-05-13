# FPGA Portfolio

This repository showcases FPGA design modules implemented in **Verilog** and **VHDL**. Each module demonstrates core digital design concepts such as memory structures, finite state machines (FSMs), arithmetic logic units (ALUs), FIFO buffers, and display control.

Designed for learning and demonstration purposes, each project includes synthesizable code and supports comparison between Verilog and VHDL.

---

## 🧩 Modules Overview

### [Problem C4M1P3: 4-bit Ripple Carry Adder](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/C4M1P3_RippleCarryAdder)
* VHDL: C4M1P3_RippleCarryAdder/C4M1P3.vhd , C4M1P3_RippleCarryAdder/C4M1P3_FA.vhd
* Testbench: C4M1P3_RippleCarryAdder/C4M1P3_tb.vhd
* 💡 Implements a 4-bit ripple carry adder using four instances of a custom full adder. Inputs A(3 downto 0), B(3 downto 0), and carry-in produce a 5-bit output: SUM and carry-out
* ✅ Simulated successfully in ModelSim using a self-written testbench. Quartus implementation planned for future testing on DE10-Lite board.

---
### [Problem C4M1P2: Binary to BCD Display](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/C4M1P2_Binary%20to%20BCD%20Converter%20(VHDL))
* **VHDL**: `C4M1P2: Binary to BCD Display(VHDL)/C4M1P2.vhd`
* **Testbench**: `C4M1P2_Binary To BCD Converter(VHDL)/C4M1P2_tb.vhd`
* 💡 Implements a binary-to-decimal converter using combinational logic and Boolean expressions. Displays 4-bit binary input (SW) as two-digit BCD output on HEX1 and HEX0.
* ✅ Manually derived comparator, MUX, and logic for circuit A; simulated using ModelSim and verified with waveform and vectorh.out. Testbench authored by me.

---
### ▸ [Problem C4M1P1: 7-Segment Display Decoder](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/C4M1P1_seven_segment_display)

* **VHDL**: `C4M1P1_seven_segment_display_VHDL/C4M1P1.vhd`
* **Testbench**: `C4M1P1_seven_segment_display_VHDL/C4M1P1_tb.vhd`
* 💡 *Displays 4-bit switch values on HEX0 and HEX1 7-segment displays using manually written Boolean logic.*
* ✅ *Completed without access to DE10-Lite board; functionality verified using a custom testbench.*

---

### ▸ Problem AAC2M2P2, AAC2M4P2: 128x32 Single-Port RAM

* [**Verilog**: `AAC2M4P2_SinglePortRAM_Verilog/AAC2M4P2.v`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M4P2_SinglePortRAM_Verilog)
* [**VHDL**: `AAC2M2P2_SinglePortRAM_VHDL/AAC2M4P2.vhd`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M2P2_SinglePortRAM_VHDL)
* 💡 *Implements synchronous read/write RAM with 128 words of 32-bit width.*

---

### ▸ Problem AAC2M2P3, AAC2M4P3: Finite State Machine (FSM)

* [**Verilog**: `AAC2M4P3_StateMachine_Verilog/AAC2M4P3.v`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M4P3_StateMachine_Verilog)
* [**VHDL**: `AAC2M2P3_StateMachine_VHDL/AAC2M4P3.vhd`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M2P3_StateMachine_VHDL)
* 💡 *Implements a simple FSM demonstrating state transitions and control logic.*

---

### ▸ Problem AAC2M4H1: 8-Operation ALU

* [**Verilog**: `AAC2M4H1_ALU_Verilog/AAC2M4H1.v`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M4H1_ALU_Verilog)
* [**VHDL**: `AAC2M4H1_ALU_VHDL/AAC2M4H1.vhd`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M4H1_ALU_VHDL)
* 💡 *Performs 8 operations including addition, subtraction, bitwise AND/OR, and increment/decrement.*

---

### ▸ Problem AAC2M4H2: 8x9 FIFO Memory

* [**Verilog**: `AAC2M4H2_FIFO8x9_Verilog/AAC2M4H2.v`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M4H2_FIFO8x9_Verilog)
* [**VHDL**: `AAC2M4H2_FIFO8x9_VHDL/AAC2M4H2.vhd`](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/AAC2M4H2_FIFO8x9_VHDL)
* 💡 *Implements an 8-word deep, 9-bit wide FIFO with pointer-based read/write control.*

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
├── C4M1P1_Seven_Segment_Display/      # VHDL: 7-Segment Display Decoder with Testbench
├── C4M1P2_Binary to BCD Converter/    # VHDL: binary-to-decimal converter with Testbench
├──C4M1P3_RippleCarryAdder/            # VHDL: 4-bit Ripple Carry Adder with Testbench
└── README.md
```
