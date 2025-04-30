# AAC2M4P3_StateMachine_VHDL

## 🧠 Finite State Machine (FSM) – VHDL

This module implements a **3-state finite state machine** (FSM) using VHDL. It responds to a single input (`In1`), transitions between three states (`A`, `B`, and `C`), and drives an output (`Out1`) based on the current state.

### ✅ Functionality
- **States**: A → B → C → A (based on input transitions).
- **Reset**: Active-high (`RST = '1'`) sets the state to A.
- **Clock**: State transitions occur on the rising edge of `CLK`.
- **Output**: `Out1 = '1'` only when the FSM is in state C; otherwise, `Out1 = '0'`.

### 📝 Port Description
| Port | Direction | Type        | Description                      |
|------|-----------|-------------|----------------------------------|
| In1  | in        | std_logic   | FSM input signal                 |
| RST  | in        | std_logic   | Asynchronous reset               |
| CLK  | in        | std_logic   | Clock signal                     |
| Out1 | inout     | std_logic   | Output signal based on FSM state |

### 🧪 Simulation
This design can be simulated using ModelSim. A testbench is recommended to verify state transitions based on input vectors and clock cycles.

---

