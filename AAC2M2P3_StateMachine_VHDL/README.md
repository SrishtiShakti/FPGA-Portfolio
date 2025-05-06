# AAC2M4P3 – 3-State Finite State Machine (FSM) [VHDL]

## 🧾 Overview

This project implements a 3-state Finite State Machine (FSM) using **VHDL** as part of the FPGA Design for Embedded Systems coursework. The FSM responds to a binary input and transitions between states A → B → C → A. The output signal is asserted only in the final state.

---

## 🔌 Inputs/Outputs

| Port  | Direction | Type       | Description                             |
|-------|-----------|------------|-----------------------------------------|
| In1   | in        | std_logic  | FSM input signal                        |
| RST   | in        | std_logic  | Asynchronous reset (active high)        |
| CLK   | in        | std_logic  | Clock signal (rising edge triggered)    |
| Out1  | inout     | std_logic  | Output = '1' only in state C; else '0'  |

---

## 🧪 Simulation Strategy

- Simulated using **ModelSim**.
- A custom **testbench** applies clock pulses and toggles `In1` to verify correct transitions and output.
- Reset behavior and wrap-around transitions (C → A) are tested.

---

## 📁 Design Files

- `AAC2M4P3.vhd` – VHDL source code for FSM logic.
- `AAC2M4P3_tb.vhd` – VHDL testbench for simulation (provided by the instructor).
- `vectorh.out` – Input stimulus file (provided by the instructor).
- `myvectorh.out` – ModelSim simulation output.
- `README.md` – Project overview and details.

---

## ✅ Testbench Results

- FSM correctly transitions through A → B → C → A with proper `In1` toggling.
- `Out1 = '1'` only in state C.
- Asynchronous reset immediately returns FSM to state A.

---

## 🎓 Course Context

This FSM design is part of the “FPGA Design for Embedded Systems” specialization by the University of Colorado Boulder on Coursera.
