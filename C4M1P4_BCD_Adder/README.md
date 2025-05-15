🧠 C4M1P4 – BCD Adder (VHDL)

📌 Overview  
This project implements a **BCD (Binary-Coded Decimal) Adder** using VHDL. It adds two 4-bit decimal digits (X and Y), each in BCD format, along with a carry-in (cin), and displays the result (S1S0) on two 7-segment displays.

The result is shown as two BCD digits (00 to 19), corresponding to values 0 through 19. The design also outputs the binary sum and carry via LED indicators for verification.

✅ Functional simulation performed in ModelSim  
✅ Testbench written by me  
✅ Works without needing a physical FPGA board  

---

🔌 Inputs and Outputs

| Signal | Direction | Width | Description                      |
|--------|-----------|-------|----------------------------------|
| X      | Input     | 4     | First BCD digit (0–9)            |
| Y      | Input     | 4     | Second BCD digit (0–9)           |
| cin    | Input     | 1     | Carry-in                         |
| S1     | Output    | 7     | 7-segment encoded tens digit     |
| S0     | Output    | 7     | 7-segment encoded ones digit     |
| LEDR   | Output    | 5     | LED debug output: 4-bit sum + carry |

---

🧪 Simulation Strategy

- The VHDL module `C4M1P4.vhd` adds two BCD digits and a carry-in bit.
- It displays the 5-bit result as two separate digits on 7-segment displays using direct Boolean mapping.
- A **custom testbench** (`tb_C4M1P4.vhd`) was written to exhaustively test inputs X = 0–9, Y = 0–9, cin = 0/1 (total 200 cases).
- Outputs are written to a text file `vectorh.out` for result verification.
- Simulation and waveform generation were done in ModelSim using `wave.do`.

---

📁 Design Files

| File             | Description                          |
|------------------|--------------------------------------|
| `C4M1P4.vhd`     | VHDL source for BCD Adder logic       |
| `tb_C4M1P4.vhd`  | ✅ Testbench (written by me)          |
| `vectorh.out`    | Output vector file (ModelSim result)  |
| `wave.do`        | Waveform setup script (optional)      |
| `README.md`      | This documentation file               |

---

🧪 Sample Testbench Output (from `vectorh.out`)


| X     | Y     | cin | S1 (Tens) | S0 (Ones) | LEDR   | Decimal Sum | Notes           |
|-------|-------|-----|-----------|-----------|--------|--------------|------------------|
| 0000  | 0000  | U   | 1000000   | UUUUUUU   | 0XXXX  | Undefined    | Uninitialized input (U) |
| 0000  | 0000  | 0   | 1000000   | 1000000   | 00000  | 0            | OK              |
| 0000  | 0001  | 1   | 1000000   | 0100100   | 00010  | 2            | OK              |
| 0000  | 0001  | 0   | 1000000   | 1111001   | 00001  | 1            | OK              |
| 1001  | 1001  | 1   | 1111001   | 0110000   | 10011  | 19           | Max valid BCD sum |
| 1001  | 1001  | 0   | 1111001   | 0100100   | 10010  | 18           | Valid BCD sum   |
