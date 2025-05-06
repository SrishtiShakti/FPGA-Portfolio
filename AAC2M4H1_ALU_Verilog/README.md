# AAC2M4H1 – 32-bit Arithmetic Logic Unit (ALU) [Verilog]

## 🧾 Overview

This project implements a **32-bit ALU** using **Verilog**. It performs 8 operations based on a 3-bit `Op_code` input. The module is designed as part of the FPGA Design for Embedded Systems coursework.

---

## 🔌 Inputs/Outputs

| Port     | Direction | Width                | Description                      |
|----------|-----------|----------------------|----------------------------------|
| Op_code  | in        | [2:0]                | Operation selector               |
| A        | in        | [31:0]               | Operand A                        |
| B        | in        | [31:0]               | Operand B                        |
| Y        | out       | [31:0]               | Output result                    |

---

## ⚙️ Supported Operations

| Op_code | Operation     | Description                     |
|---------|---------------|---------------------------------|
| 3'b000  | Transfer A     | Y = A                           |
| 3'b001  | Addition       | Y = A + B                       |
| 3'b010  | Subtraction    | Y = A - B                       |
| 3'b011  | Bitwise AND    | Y = A & B                       |
| 3'b100  | Bitwise OR     | Y = A | B                       |
| 3'b101  | Increment A    | Y = A + 1                       |
| 3'b110  | Decrement A    | Y = A - 1                       |
| 3'b111  | Transfer B     | Y = B                           |

---

## 🧪 Simulation Strategy

- Simulated using **ModelSim** with provided testbench.
- A variety of input combinations were applied to validate all `Op_code` functions.
- Simulation output verified correctness of each operation.
- Waveform viewer used to inspect signal behavior.

---

## 📁 Design Files

- `AAC2M4H1.v` – Verilog code implementing the ALU.
- `AAC2M4H1_tb.v` – Verilog testbench.
- `vectorh.out` – Input vectors for simulation.
- `myvectorh.out` – Output vectors from ModelSim.
- `README.md` – This project documentation.

---

## ✅ Testbench Results

- Each operation executed successfully with expected outputs.
- Functional correctness observed through simulation waveforms.
- Testbench used a combination of fixed and edge-case inputs.

---

## 📸 Screenshots (Waveforms)

- `waveform.png`

---

## 📚 Notes

- Implemented using a `case` statement inside an `always @(*)` block.
- Efficient and readable structure avoids unintended latch synthesis.
