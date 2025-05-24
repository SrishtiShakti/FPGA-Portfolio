# FPGA Portfolio

This repository showcases a curated collection of FPGA design modules implemented in both **Verilog** and **VHDL**. Each module illustrates fundamental digital design concepts such as memory structures (RAM, FIFO), finite state machines (FSMs), arithmetic logic units (ALUs),PPWM with PLL aand debouncer, and 7-segment display control.

Projects are developed as part of the *FPGA Design for Embedded Systems* specialization and are intended for both learning and demonstration. Each design includes:

- Synthesizable HDL code
- Self-written or course-provided testbenches
- Simulation results using **ModelSim**
- Optional Quartus projects for synthesis and board-level deployment

Where possible, equivalent VHDL and Verilog versions are included for direct comparison.


---

## 🧩 Modules Overview

### ▸ [Problem PWM_With_PLL: PWM Generator with PLL and Debouncer](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/PWM_With_PLL)

* **Verilog**: `PWM_With_PLL/pwm_gen.v`, `PWM_With_PLL/debouncer.v`, `PWM_With_PLL/pwm_led_top.v`, `PWM_With_PLL/pwm_pll.v`  
* **Schematic**: `PWM_With_PLL/pwm_led_top.bdf`  
* 💡 Implements a PWM signal generator with duty cycle control using switches, a debouncer for input stability, and a PLL-generated clock for precise timing. Uses a schematic-based top-level design connected to Verilog modules and IP blocks.  
* ✅ Simulated in ModelSim (via schematic-generated Verilog HDL). Built in Quartus Prime using a combination of Verilog source files, PLL IP core, and a schematic (.bdf) as top-level design. Duty cycle control verified via waveform outputs. Project tested without needing a DE10-Lite board.

---
### ▸ [Problem C4M1P5: BCD Adder (Algorithmic Version with IF-ELSE)](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/C4M1P5_BCD_Adder2)
* **VHDL**: `C4M1P5_BCD_Adder2/C4M1P5.vhd`
* **Testbench**: `C4M1P5_BCD_Adder2/C4M1P5_tb.vhd`
* 💡 Implements a BCD adder using an algorithmic VHDL approach with `if-else` and comparison operators. Computes the sum `A + B + cin`, performs correction if the raw sum exceeds 9, and outputs a valid two-digit BCD sum.
* ✅ Simulated in ModelSim with self-written testbench; displays A and B on HEX4/HEX3 and the final sum on HEX1/HEX0. Debugging via LEDR. Quartus RTL viewer confirms synthesized logic using comparators, adders, and conditional structures.

---
### ▸ [Problem C4M1P4: BCD Adder and 7-Segment Display](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/C4M1P4_BCD_Adder)
* **VHDL**: `C4M1P4_BCD_Adder/C4M1P4.vhd`
* **Testbench**: `C4M1P4_BCD_Adder/C4M1P4_tb.vhd`
* 💡 Adds two BCD digits (X and Y) with a carry-in and displays the result as a two-digit decimal on S1 and S0 using 7-segment logic.
* ✅ Simulated successfully in ModelSim using a self-written testbench. Quartus implementation planned for future testing on DE10-Lite board.

---

### [Problem C4M1P3: 4-bit Ripple Carry Adder](https://github.com/SrishtiShakti/FPGA-Portfolio/tree/main/C4M1P3_RippleCarryAdder)
* VHDL: `C4M1P3_RippleCarryAdder/C4M1P3.vhd` , `C4M1P3_RippleCarryAdder/C4M1P3_FA.vhd`
* Testbench: `C4M1P3_RippleCarryAdder/C4M1P3_tb.vhd`
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
├──C4M1P4_BCD_Adder/                   # VHDL: BCD adder with Testbench
├──C4M1P5_BCD_Adder2/                  # VHDL: BCD adder using if-else with Testbench
├──PWM_With_PLL/                       # Verilog: PWM Generator with PLL and Debouncer
└── README.md
```
