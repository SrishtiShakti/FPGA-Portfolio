# AAC2M4P2 – 128x32 Single-Port RAM [VHDL]

## 🧾 Overview

This project implements a **128-word by 32-bit wide single-port RAM** using **VHDL**. It allows for read and write operations through a single memory port and was verified through simulation using **ModelSim**.

---

## 📁 Files Included

| File Name          | Description                                              |
|--------------------|----------------------------------------------------------|
| AAC2M4P2.vhd        | VHDL implementation of the 128x32 single-port RAM        |
| AAC2M4P2_tb.vhdp     | Provided testbench file for simulation                   |
| wave.do            | Pre-configured waveform file for ModelSim                |
| vectorh.out        | Input vector data for simulation                         |
| myvectorh.out      | Output result from simulation                            |
| README.md          | Project documentation                                    |

---

## 🛠️ Tools Used

- **Intel Quartus Prime 16.1**
- **ModelSim – Intel FPGA Edition**

---

## 📌 RAM Module Features

- **Memory Size**: 128 entries × 32 bits
- **Single-Port Access**: Combined read/write port using address and data inputs
- **Addressing**: 7-bit address for 128-word range
- **Read/Write Logic**: Controlled through enable and clock signals
- **Synchronous Operation**: Memory access synchronized to clock edge

---

## 🧪 Simulation Strategy

- **Testbench (provided by course)**:
  - Writes known data patterns to various addresses
  - Reads them back for validation
- **Waveform Analysis**:
  - Visual verification using `wave.do` in ModelSim
  - Matching data confirms correct memory behavior

---

## ✅ Status

- ✔️ Simulation completed successfully
- ✔️ Correct behavior verified through waveform and output files
- ✔️ Memory values correctly retained and accessed

---

## 📚 Notes

- Suitable as a base design for custom memory modules
- Can be extended to dual-port or parameterized RAM designs
