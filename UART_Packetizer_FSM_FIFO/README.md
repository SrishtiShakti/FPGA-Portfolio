# UART Packetizer with FSM and FIFO Integration
---
🧠 Overview

This project implements a digital system that receives 8-bit parallel data, stores it in a FIFO, and serializes it using a UART-like interface. A Finite State Machine (FSM) acts as a packetizer, framing each byte with start and stop bits and sending the 10-bit packet over a serial line.

---

## 🔧 Modules

- **FIFO**: 16-depth FIFO for temporary data storage
- **FSM_Packetizer**: FSM that reads data from FIFO and frames it
- **UART_Transmitter**: Serial transmitter that sends the packet over UART
- **Top_Module**: Interconnects all above modules and manages data flow

---

## ⚙️ Functional Flow

1. Parallel data is pushed into the FIFO when `wr_en` is high.
2. FSM detects when FIFO is not empty and UART is ready.
3. FSM loads data, adds start (0) and stop (1) bits.
4. UART sends the 10-bit packet serially using a baud-timed clock.

---

## FSM Design

![FSM Diagram](./sim/waveform_screenshots/fsm_state_diagram.png)

| State Name       | State Code | Description                                     |
|------------------|------------|-------------------------------------------------|
| **IDLE**         | `000`      | Waits for FIFO to contain data                 |
| **WAIT_TX_READY**| `001`      | Waits for UART to become ready                 |
| **LOAD_DATA**    | `010`      | Loads FIFO data and prepares UART packet       |
| **SEND_BITS**    | `011`      | Sends packet bit-by-bit using a counter        |
| **DONE**         | `100`      | Marks end of transmission and resets flags     |

---

## 📊 Quartus Resource Utilization

| Metric                          | Quartus Report Result        |
|----------------------------------|-------------------------------|
| Logic utilization (LEs)         | 111 / 8,064 (1%)              |
| Registers used                  | 76 / 9,287 (<1%)              |
| Fmax (Slow 1200mV 85°C)         | **201.33 MHz**                |
| Fmax (Fast 0°C)                 | Slack = **-1.094** (violation)|
| Fmax (Slow 0°C)                 | **217.3 MHz**                 |
| Total memory bits used          | 128 / 387,072 (<1%)           |

> ❗ *Note: Fmax (Fast 0°C) has negative slack indicating a setup time violation.*

---

## 📥 Inputs / Outputs

| Signal       | Direction | Description                              |
|--------------|-----------|------------------------------------------|
| `clk`        | Input     | 50 MHz system clock                      |
| `rst`        | Input     | Active-high synchronous reset            |
| `data_in`    | Input     | 8-bit input data                         |
| `wr_en`      | Input     | Write enable for FIFO                    |
| `tx_ready`   | Input     | UART ready signal                        |
| `serial_out` | Output    | UART serial output                       |
| `fifo_full`  | Output    | FIFO full status                         |
| `fifo_empty` | Output    | FIFO empty status                        |
| `tx_busy`    | Output    | UART transmission in progress            |

---

## ✅ Testbenches

Each module was tested using ModelSim:

- `FIFO_tb.v`: Validates write/read and flags  
- `FSM_tb.v`: Simulates FSM transitions and packet loading  
- `UART_tb.v`: Validates correct bit-wise transmission  
- `Top_Module_tb.v`: Full system integration test  

> 📷 Waveform screenshots are located in `sim/waveform_screenshots/`.

---

## 📘 FIFO Architecture

- Synchronous FIFO with 16-depth buffer.
- Controlled via `wr_en`, `rden`.
- Outputs flags: `fifo_full`, `fifo_empty`, and `data_out_valid`.

---

## 🔁 Sync vs Async FIFO

This design uses a **synchronous FIFO** since all components operate under the same 50 MHz system clock. An asynchronous FIFO would only be needed if crossing clock domains.

---

## ✍️ Process Followed

1. Understood the assessment and created a block diagram.
2. Reused and adapted previous experience with FSM and FIFO modules.
3. Learned and implemented UART transmitter in Verilog.
4. Built top-level RTL module to integrate all submodules.
5. Verified correctness via **Quartus Prime** and simulated in **ModelSim**.
6. Documented resource usage and FSM behavior.

---

💡 Designed for a job assessment. Implements UART packet framing using FIFO and FSM, simulated successfully in ModelSim and compiled in Quartus.  
📂 Includes full RTL, testbenches, waveform screenshots, and documentation.  
🛠️ Status: **Work-in-progress**, uploaded to reflect problem-solving and integration efforts.


