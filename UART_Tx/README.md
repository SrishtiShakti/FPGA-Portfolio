Refactoring Nandland UART Transmitter — FSM Architecture Improvement (VHDL)

This project is a rewritten and optimized version of the classic Nandland UART TX VHDL implementation.
The original design used a five-state FSM, where each state performed both the operation and the internal timing delay:
```mermaid
stateDiagram-v2
    direction LR

    s_Idle --> s_TX_Start_Bit: i_TX_DV = 1

    s_TX_Start_Bit --> s_TX_Data_Bit: clock cycle done

    s_TX_Data_Bit --> s_TX_Data_Bit: more bits pending
    s_TX_Data_Bit --> s_TX_Stop_Bit: all bits sent

    s_TX_Stop_Bit --> s_Cleanup: clock cycle done

    s_Cleanup --> s_Idle
```
This approach works, but it mixes functional logic and timing logic inside the same state, increasing the combinational depth and complexity.
🔧 What I Changed

I refactored the UART TX FSM into a cleaner, more modular, and more timing-friendly 6-state architecture:
```mermaid
stateDiagram-v2
    direction LR

    s_Idle --> D: i_TX_DV = 1
    D --> s_TX_Start_Bit

    s_TX_Start_Bit --> D: clock done
    D --> s_TX_Data_Bit

    s_TX_Data_Bit --> D: bit done
    D --> s_TX_Stop_Bit: all bits sent

    s_TX_Stop_Bit --> D: clock done
    D --> s_Cleanup

    s_Cleanup --> s_Idle
```
D – Handles the baud-rate timing counter
(waits for the required number of clock cycles before moving to the next operation)
