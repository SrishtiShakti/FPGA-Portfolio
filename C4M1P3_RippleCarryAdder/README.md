# ⚙️ C4M1P3 – 4-bit Ripple Carry Adder (VHDL)

## 📌 Overview  
This project implements a 4-bit **ripple carry adder** using structural VHDL. It is constructed from four instances of a 1-bit full adder component. The design takes two 4-bit binary inputs (`A`, `B`) and an optional carry-in (`cin`) and produces a 4-bit sum (`S`) and a carry-out (`cout`).

- ✅ Functional simulation performed in ModelSim  
- ✅ Exhaustive testbench (256 combinations tested)  
- ✅ Output logged to `vectorh.out`  
- ✅ No FPGA board required for testing

---

## 🔌 Inputs and Outputs

| Signal | Direction | Width | Description                    |
|--------|-----------|-------|--------------------------------|
| A      | Input     | 4 bits| First binary operand           |
| B      | Input     | 4 bits| Second binary operand          |
| cin    | Input     | 1 bit | Carry-in                       |
| S      | Output    | 4 bits| Sum of A, B, and cin           |
| cout   | Output    | 1 bit | Final carry-out (overflow bit) |

---

## 🧠 Design Architecture

- `C4M1P3_FA.vhd`: A 1-bit full adder (FA) module.
- `C4M1P3.vhd`: Top-level design using four FAs to construct a ripple carry adder.
- `C4M1P3_tb.vhd`: Exhaustive testbench that tests all 256 combinations of `A`, `B`, and `cin`, and writes results to `vectorh.out`.

---

## 🧪 Simulation Strategy

- Simulation performed in **ModelSim**.
- Wait time of `20 ns` between input combinations.
- Output written to `vectorh.out` in human-readable format using `textio`.
- Testbench designed using `for` loops to cover all input combinations.

---

## 📁 Design Files

| File                  | Description                                 |
|-----------------------|---------------------------------------------|
| `C4M1P3.vhd`          | Top-level ripple carry adder (structural)   |
| `C4M1P3_FA.vhd`       | 1-bit full adder component                  |
| `C4M1P3_tb.vhd`       | ✅ Testbench (written by me)                 |
| `vectorh.out`         | Output log with all 256 test results        |
| `wave.do`             | Waveform setup script for ModelSim          |
| `waveform2.png`       | Screenshot of simulation waveform |
| `README.md`           | This documentation file                     |

---

## 🧪 Sample Output (vectorh.out)

Below are the results of simulating the 4-bit ripple carry adder:

| **A (Binary)** | **B (Binary)** | **cin (Binary)** | **SUM (Binary)** | **cout (Binary)** |
|---------------|---------------|---------------|---------------|---------------|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0000 | 0001 | 1 | 0010 | 0 |
| 0001 | 1111 | 0 | 0000 | 1 |
| ... | ... | ... | ... | ... |
| 1111 | 1111 | 0 | 1110 | 1 |

