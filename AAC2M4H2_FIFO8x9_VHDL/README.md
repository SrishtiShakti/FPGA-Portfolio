# AAC2M4H2 – 8x9 FIFO Memory [VHDL]

## 🧾 Overview

This project implements an **8-word by 9-bit First-In-First-Out (FIFO)** memory module using **VHDL**. It simulates a basic FIFO system commonly used for data buffering between asynchronous components or processes in digital designs.

---

## 🔌 Inputs/Outputs

| Port       | Direction | Width     | Description                                         |
|------------|-----------|-----------|-----------------------------------------------------|
| DataIn     | in        | std_logic_vector(8 downto 0) | Input data (9-bit)                 |
| WrPtrClr   | in        | std_logic  | Write pointer clear                                 |
| WrInc      | in        | std_logic  | Write pointer increment                             |
| RdPtrClr   | in        | std_logic  | Read pointer clear                                  |
| RdInc      | in        | std_logic  | Read pointer increment                              |
| WEn        | in        | std_logic  | Write enable                                        |
| REn        | in        | std_logic  | Read enable                                         |
| DataOut    | out       | std_logic_vector(8 downto 0) | Output data (tri-state when REn = '0')             |

---

## ⚙️ Core Architecture

- **Register Array**: 8 registers, each 9 bits wide.
- **Write/Read Pointers**: Independently controlled via clear and increment signals.
- **Write Logic**: 3-to-8 decoder enables a single register for writing.
- **Read Logic**: 8-to-1 multiplexer selects one register for reading.
- **Tristate Output**: Output `DataOut` is driven only when `REn = '1'`.

---

## 🧪 Simulation Strategy

- Simulated using **ModelSim**.
- **Testbench provided by the course** (not user-authored).
- The simulation verifies write and read functionality, pointer behavior, and correct tri-state output.
- All input control signals were toggled to evaluate full coverage of functional cases.

---

## 📁 Design Files

- `AAC2M4H2.vhd` – VHDL implementation of the FIFO.
- `AAC2M4H2_tb.vhdp` – VHDL testbench (provided by course).
- `vectorh.out` – Simulation input vectors.
- `myvectorh.out` – Output results after simulation.
- `README.md` – Documentation and usage guide.

---

## ✅ Testbench Results

- Read and write operations correctly target designated memory locations.
- Data output matches expected sequence based on FIFO behavior.
- Pointer control and tri-state logic validated through waveform inspection.

---

## 📸 Screenshots (Waveforms)

- `waveform.png

---

## 📚 Notes

- The design avoids unintended latch synthesis by using fully specified logic paths.
- Useful for understanding basic synchronous memory structures with tri-state behavior.
