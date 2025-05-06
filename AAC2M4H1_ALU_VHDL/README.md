# AAC2M4H1 – 32-bit Arithmetic Logic Unit (ALU) [VHDL]

## 🧾 Overview

This project implements a 32-bit Arithmetic Logic Unit (ALU) using **VHDL**. The ALU performs 8 basic operations selected by a 3-bit `Op_code` input. It is part of the FPGA Design for Embedded Systems specialization.

---

## 🔌 Inputs/Outputs

| Port     | Direction | Width                | Description                      |
|----------|-----------|----------------------|----------------------------------|
| Op_code  | in        | std_logic_vector(2:0)| Operation selector               |
| A        | in        | std_logic_vector(31:0)| Operand A                        |
| B        | in        | std_logic_vector(31:0)| Operand B                        |
| Y        | out       | std_logic_vector(31:0)| Output result                    |

---

## ⚙️ Supported Operations

| Op_code | Operation     | Description                     |
|---------|---------------|---------------------------------|
| "000"   | Transfer A    | Pass input A directly to Y      |
| "001"   | Addition       | Y = A + B                       |
| "010"   | Subtraction    | Y = A - B                       |
| "011"   | Bitwise AND    | Y = A AND B                     |
| "100"   | Bitwise OR     | Y = A OR B                      |
| "101"   | Increment A    | Y = A + 1                       |
| "110"   | Decrement A    | Y = A - 1                       |
| Others  | Transfer B     | Default case: Y = B             |

---

## 🧪 Simulation Strategy

- Simulated using **ModelSim**.
- Provided testbench applies all supported `Op_code` values with varying A and B inputs.
- Simulation verifies output Y matches expected operation result.
- A waveform setup file like `wave.do` can enhance visual inspection.

---

## 📁 Design Files

- `AAC2M4H1.vhd` – VHDL code implementing the ALU.
- `AAC2M4H1_tb.vhd` – VHDL testbench.
- `vectorh.out` – Input vectors for simulation.
- `myvectorh.out` – Output vectors from ModelSim.
- `README.md` – This project overview and guide.

---

## ✅ Testbench Results

- All operations verified through simulation.
- Edge cases like overflow are not handled (as per assignment scope).
- Output `Y` matches expected results for each operation code.

---

## 📚 Notes

- Uses `ieee.numeric_std` for safe arithmetic.
- Avoids latch inference by fully specifying the case statement.
