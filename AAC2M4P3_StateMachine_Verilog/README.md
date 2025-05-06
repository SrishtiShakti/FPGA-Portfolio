# AAC2M4P3 – Finite State Machine (FSM) [Verilog]

## 🧠 Overview

This project implements a **3-state Finite State Machine (FSM)** in **Verilog**. The FSM cycles through states **A → B → C → A** based on the input `In1`. The output `Out1` is asserted (set to 1) **only in State C**, and remains 0 in other states.

---

## 🔌 Inputs / Outputs

| Signal | Direction | Description                                  |
|--------|-----------|----------------------------------------------|
| CLK    | Input     | Clock signal (positive edge triggered)       |
| RST    | Input     | Asynchronous reset (active low)              |
| In1    | Input     | Input signal driving state transitions       |
| Out1   | Output    | Output = 1 only in State C, otherwise 0      |

---

## 🔁 State Transitions

- **State A**:  
  If `In1 == 1` → Transition to **State B**  
  Else → Stay in **State A**

- **State B**:  
  If `In1 == 0` → Transition to **State C**  
  Else → Stay in **State B**

- **State C**:  
  If `In1 == 1` → Transition to **State A**  
  Else → Stay in **State C**

---

## 🛠 Output Behavior

- `Out1 = 1` → **Only in State C**
- `Out1 = 0` → In States A and B

---

## 🧪 Simulation Strategy

- **Testbench (provided by course)** applies a sequence of `In1` transitions and clock pulses to observe state behavior.
- State transitions and `Out1` logic were **verified using waveform analysis** in ModelSim.

---

## 📁 Design Files

| File Name        | Description                                  |
|------------------|----------------------------------------------|
| FSM.v            | Verilog implementation of the FSM module     |
| FSM_tb.vp        | Provided testbench for simulation            |
| wave.do          | ModelSim waveform configuration              |
| vectorh.out      | Input stimulus file                          |
| myvectorh.out    | Output results from simulation               |
| README.md        | Project documentation                        |

---

## ✅ Testbench Results

- ✔️ FSM transitioned through A → B → C correctly based on input
- ✔️ `Out1` asserted only in State C as expected
- ✔️ Verified timing and logic using waveform

---

Let me know if you’d like to add a waveform screenshot or logic diagram for visual reference.
