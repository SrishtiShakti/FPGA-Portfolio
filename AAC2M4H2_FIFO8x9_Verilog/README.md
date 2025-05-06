# AAC2M4H2 – 256x9 FIFO Memory [Verilog]

## 🧾 Overview

This project implements a **256-depth by 9-bit wide FIFO (First-In-First-Out)** memory module using **Verilog**. It features independent read and write control logic, pointer reset and increment functionality, and is suitable for use in buffered data communication systems.

---

## 🔌 Inputs/Outputs

| Port       | Direction | Width     | Description                                           |
|------------|-----------|-----------|-------------------------------------------------------|
| clk        | in        | 1         | Clock signal for synchronizing operations             |
| rst        | in        | 1         | Synchronous reset for FIFO and pointers               |
| RdPtrClr   | in        | 1         | Clears read pointer to 0                              |
| WrPtrClr   | in        | 1         | Clears write pointer to 0                             |
| RdInc      | in        | 1         | Increments read pointer                               |
| WrInc      | in        | 1         | Increments write pointer                              |
| DataIn     | in        | 9         | Input data to write into FIFO                         |
| rden       | in        | 1         | Read enable                                           |
| wren       | in        | 1         | Write enable                                          |
| DataOut    | out       | 9         | Output data from FIFO                                 |
| wr_cnt     | out       | 8         | Write pointer value                                   |
| rd_cnt     | out       | 8         | Read pointer value                                    |

---

## ⚙️ Core Architecture

- **FIFO Size**: 256 entries, each 9 bits wide.
- **Write Operation**:
  - On rising clock edge, if `wren = 1`, the 9-bit `DataIn` is written to FIFO at `wrptr`.
  - `wrptr` is incremented when `WrInc = 1`.
- **Read Operation**:
  - If `rden = 1`, the data at address `rdptr` is output on `DataOut`.
  - `rdptr` is incremented when `RdInc = 1`.
- **Pointer Reset**:
  - `RdPtrClr` and `WrPtrClr` reset their respective pointers to `0`.
- **Synchronous Reset**: `rst` clears the memory and resets both pointers.

---

## 🧪 Simulation Strategy

- Simulated using **ModelSim** or equivalent Verilog simulator.
- **Testbench provided by the course**.
- Simulation verifies:
  - Correct pointer increment/reset behavior.
  - Accurate data read/write operation.
  - Output matches FIFO sequence expectations.

---

## 📁 Design Files

- `AAC2M4H2.v` – Verilog implementation of the 256x9 FIFO.
- `AAC2M4H2_tb.vp` – Verilog testbench (provided by course).
- `vectorh.out` – Simulation input vectors.
- `myvectorh.out` – Output results after simulation.
- `README.md` – Project documentation.

---

## ✅ Testbench Results

- Successful read/write transactions confirmed.
- Pointer updates and reset behavior verified.
- Output `DataOut` matches expected FIFO ordering.

---

## 📸 Screenshots (Waveforms)

- `waveform.png`

---

## 📚 Notes

- Logic uses case statements to avoid unintended latch synthesis.
- This design is ideal for deep buffering needs in data pipelines or serial interfaces.
