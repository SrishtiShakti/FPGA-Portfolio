# C4M1P1 – Binary to 7-Segment Display [VHDL]

## 🧠 Overview

This VHDL project implements a **Binary-Coded Decimal (BCD) to 7-segment display** converter simulating a **two-digit 7-segment output (HEX1 & HEX0)**. It processes an 8-bit binary input and maps it to the corresponding decimal digits for display. The design is **fully tested in ModelSim** without requiring an FPGA development board.

---

## 🔌 Inputs / Outputs

| Signal     | Direction | Description                                  |
|------------|-----------|----------------------------------------------|
| SW[7:0]    | Input     | 8-bit binary input from simulated switches   |
| HEX0[6:0]  | Output    | Lower digit (ones place) 7-segment output    |
| HEX1[6:0]  | Output    | Upper digit (tens place) 7-segment output    |

---

## 💡 Features

- ✅ Binary to Decimal Conversion (0–255)
- ✅ Dual-digit 7-segment display logic
- ✅ VHDL implementation without physical hardware
- ✅ Exhaustive simulation covering all 256 input combinations
- ✅ Generates `vectorh.out` with full input-output mappings
- ✅ Includes `wave.do` file for waveform configuration in ModelSim
- ✅ Fully self-contained project with Quartus `.qpf` project file

---

## 🧪 Testbench

- The **testbench `tb_C4M1P1.vhd` was fully developed by me** to simulate all 256 input values from `SW[7:0]`.
- It exhaustively verifies both digit outputs (`HEX0` and `HEX1`).
- Produces `vectorh.out` with the complete simulation result mappings.
- Verified using **ModelSim waveform analysis**.

---

## 📁 Design Files

| File Name              | Description                                 |
|------------------------|---------------------------------------------|
| `C4M1P1.vhd`           | VHDL implementation of binary-to-BCD logic  |
| `tb_C4M1P1.vhd`        | Exhaustive custom testbench                 |
| `vectorh.out`          | Simulation result file                      |
| `wave.do`              | Waveform script for ModelSim                |
| `waveform.png` | Simulation output image (optional visual) |
| `C4M1P1.qpf`           | Quartus project file                        |
| `README.md`            | Project documentation                       |

---

✅ Testbench Results
✔️ All 256 input values verified

✔️ HEX0 and HEX1 display correct BCD digits

✔️ Waveform confirmed expected output transitions

✔️ Fully self-contained and simulation-ready


