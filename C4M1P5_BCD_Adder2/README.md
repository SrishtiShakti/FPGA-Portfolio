# 🔢 C4M1P5 – BCD Adder Revisited (VHDL)

## 📌 Overview

This project implements a **BCD (Binary-Coded Decimal) Adder** using an algorithmic approach in VHDL, closely following a pseudo-code specification. It revisits the BCD adder problem from Part IV, but instead of using fixed combinational logic, this version leverages the VHDL compiler's capabilities with conditional statements like `IF-ELSE` and arithmetic operators such as `+`, `-`, and `>`.

The adder takes two BCD inputs `A` and `B` (4 bits each) and a carry-in `cin`. It computes the corrected BCD sum and displays the result using two 7-segment displays (`S1` and `S0`). Additionally, the input values are shown on HEX4 and HEX3, and the internal sum/debug signals are output on LEDs.

---

## 📂 Files Included

| File           | Description                                |
|----------------|--------------------------------------------|
| `C4M1P5.vhd`    | Main VHDL source code for the BCD adder    |
| `C4M1P5_tb.vhd` | Self-authored VHDL testbench for simulation |
| `vectorh.out`   | Output log file from ModelSim testbench     |
| `wave.do`       |  Waveform configuration for ModelSim |
| `README.md`     | This documentation                         |

---

## 🔌 Inputs and Outputs

| Signal | Direction | Width | Description                        |
|--------|-----------|-------|------------------------------------|
| `A`    | Input     | 4-bit | First BCD digit                    |
| `B`    | Input     | 4-bit | Second BCD digit                   |
| `cin`  | Input     | 1-bit | Carry-in                           |
| `S1`   | Output    | 7-bit | Tens digit displayed on HEX1       |
| `S0`   | Output    | 7-bit | Ones digit displayed on HEX0       |
| `HEX4` | Output    | 7-bit | Displays input A                   |
| `HEX3` | Output    | 7-bit | Displays input B                   |
| `LEDR` | Output    | 5-bit | Debug LEDs: sum[3:0] + carry-out   |

---

## 🧪 Simulation Strategy

- Self-authored testbench (`C4M1P5_tb.vhd`) runs exhaustive testing for all valid BCD values (A, B ∈ [0–9], cin ∈ [0,1])
- The output is written to `vectorh.out`
- Waveform analysis supported via `wave.do` 
- Functional verification done using ModelSim

---

## 🧪 Testbench Output Table

| A     | B     | cin | S1       | S0       | LEDR   | Sum (Decimal) |
|-------|-------|-----|----------|----------|--------|----------------|
| 0000  | 0000  | 0   | 1000000  | 0000000  | 00000  | 0              |
| 0000  | 0000  | 1   | 1000000  | 0000001  | 00001  | 1              |
| 0000  | 0001  | 0   | 1000000  | 0000001  | 00001  | 1              |
| 1001  | 1000  | 0   | 1000000  | 0000001  | 00001  | 17             |
| 1001  | 1000  | 1   | 1000000  | 0000010  | 00010  | 18             |
| 1001  | 1001  | 0   | 1000000  | 0000010  | 00010  | 18             |
| 1001  | 1001  | 1   | 1000000  | 0000011  | 00011  | 19             |


