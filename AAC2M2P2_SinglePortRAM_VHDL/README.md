# AAC2M2P2 – 128x32 Single-Port RAM (VHDL)

## 📌 Overview
This project implements a **128 x 32-bit single-port RAM** using **VHDL**. It was developed as part of the "FPGA Design for Embedded Systems" specialization from the University of Colorado Boulder on Coursera. The design adheres to specific constraints such as clocked write and combinational (unregistered) read.

## 🔁 Inputs / Outputs

| Signal | Direction | Width | Description                        |
|--------|-----------|-------|------------------------------------|
| `clk`  | Input     | 1     | Clock signal for synchronous write |
| `we`   | Input     | 1     | Write enable                       |
| `a`    | Input     | 7     | Address (0–127)                    |
| `d`    | Input     | 32    | Data input                         |
| `q`    | Output    | 32    | Data output (combinational read)   |

## 🧪 Simulation Strategy
- Simulated using **ModelSim**.
- The testbench and vector input files were provided as part of the coursework.
- `vectorh.out` was used to drive test cases.
- Simulation output verified against `myvectorh.out`.

## 📁 Design Files
- `AAC2M2P2.vhd`: VHDL source code for 128x32 Single-Port RAM.
- `AAC2M2P2_tb.vhd`: VHDL testbench (provided).
- `vectorh.out`: Input vectors for simulation.
- `myvectorh.out`: Simulation output results.
- `README.md`: This file.

## ✅ Testbench Results
- The design passed all vector-driven tests.
- Output matched the expected results provided in `vectorh.out`.

## 📸 Screenshots (Waveform)
- `waveform.png`
