# 🧠 C4M1P2 – Binary to BCD Converter (VHDL)

## 📌 Overview
This project implements a **Binary to BCD (Binary-Coded Decimal)** converter using VHDL. The design takes a 4-bit binary input (`SW[3:0]`) and displays its decimal equivalent across two **7-segment displays** (`HEX1`, `HEX0`). 

It uses a comparator (`z`), a multiplexer, and a correction circuit (`A`) to determine the correct BCD output for values from `0–15`.

✅ Functional simulation performed in **ModelSim**  
✅ Testbench written by **me**  
✅ Works **without needing a physical FPGA board**

---

## 🔌 Inputs and Outputs

| Signal | Direction | Width | Description |
|--------|-----------|-------|-------------|
| `SW[3:0]` | Input | 4 bits | Binary number to convert (0–15) |
| `HEX0`    | Output | 7 bits | 7-segment for digit `d0` |
| `HEX1`    | Output | 7 bits | 7-segment for digit `d1` |

Internal signals:

- `z` → comparator output (`1` if SW > 9)
- `A[3:0]` → correction value used when SW > 9

---

## 🧪 Simulation Strategy

- Designed `C4M1P2.vhd` using **Boolean equations only** (no `if`, `case`, etc.)
- Wrote testbench `tb_C4M1P2.vhd` to simulate all 16 possible values of SW
- Used ModelSim for RTL simulation, `wave.do` for signal visualization
- Output captured in `vectorh.out`

---

## 📁 Design Files

| File              | Description |
|-------------------|-------------|
| `C4M1P2.vhd`       | VHDL source code (binary-to-BCD logic) |
| `tb_C4M1P2.vhd`    | ✅ Testbench (written by me) |
| `wave.do`          | Waveform setup script |
| `vectorh.out`      | Output vector file from ModelSim |
| `waveform_C4M1P2.png` | Optional: Waveform screenshot |
| `config.png`        | Quartus prime configuration screenshot |
| `README.md`        | This documentation file |

---

## 🧪 Testbench Results

| SW   | HEX1     | HEX0     | Notes |
|------|----------|----------|-------|
| 0000 | 1000000  | 1000000  | 0 |
| 0001 | 1000000  | 1111001  | 1 |
| 0010 | 1000000  | 0100100  | 2 |
| 0011 | 1000000  | 0110000  | 3 |
| 0100 | 1000000  | 0011001  | 4 |
| 0101 | 1000000  | 0010010  | 5 |
| 0110 | 1000000  | 0000010  | 6 |
| 0111 | 1000000  | 1111000  | 7 |
| 1000 | 1000000  | 0000000  | 8 |
| 1001 | 1000000  | 0010000  | 9 |
| 1010 | 1111001  | 1000000  | 10 (1-0) |
| 1011 | 1111001  | 1111001  | 11 (1-1) |
| 1100 | 1111001  | 0100100  | 12 (1-2) |
| 1101 | 1111001  | 0110000  | 13 (1-3) |
| 1110 | 1111001  | 0011001  | 14 (1-4) |
| 1111 | 1111001  | 0010010  | 15 (1-5) |

---

## 📷 Waveform Screenshot

- `waveform.png`
- `config.png` 

