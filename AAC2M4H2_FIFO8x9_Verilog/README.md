# FIFO (First-In-First-Out) Memory - 8x9 - Verilog

## Description

This project implements a **FIFO (First-In-First-Out)** memory with an 8-bit wide data input and output and a depth of 256 entries, designed in **Verilog**. The FIFO has separate read and write pointers, as well as the capability to clear and increment these pointers. It also includes basic control signals for read (`rden`), write (`wren`), and pointer clearing (`RdPtrClr`, `WrPtrClr`).

## Functionality

- **FIFO Memory Size**: 256 entries, each 9 bits wide.
- **Read/Write Control**: Managed by `rden` (read enable) and `wren` (write enable).
- **Read and Write Pointers**: These pointers are managed by `RdPtrClr` (read pointer clear), `WrPtrClr` (write pointer clear), `RdInc` (read pointer increment), and `WrInc` (write pointer increment).
- **Reset (`rst`)**: Resets the FIFO and pointers to their initial state.

### Operations:
1. **Write Operation**:
   - On every rising edge of the clock, if `wren` is high, the data from `DataIn` is written to the FIFO at the location specified by `wrptr`.
   - The `wrptr` is incremented by `WrInc` with each write.

2. **Read Operation**:
   - When `rden` is high, the data at the location specified by `rdptr` is output on `DataOut`.
   - The `rdptr` is incremented by `RdInc` with each read.

3. **Pointer Clearing**:
   - The `RdPtrClr` signal resets the read pointer `rdptr` to 0.
   - The `WrPtrClr` signal resets the write pointer `wrptr` to 0.

### Module Interface

- **Inputs**:
  - `clk` (Clock): Synchronizes the FIFO operations.
  - `rst` (Reset): Resets FIFO memory and pointers.
  - `RdPtrClr` (Read Pointer Clear): Clears the read pointer.
  - `WrPtrClr` (Write Pointer Clear): Clears the write pointer.
  - `RdInc` (Read Pointer Increment): Increments the read pointer.
  - `WrInc` (Write Pointer Increment): Increments the write pointer.
  - `DataIn` (9 bits): Input data to be written to FIFO.
  - `rden` (Read Enable): Enables read operation.
  - `wren` (Write Enable): Enables write operation.

- **Outputs**:
  - `DataOut` (9 bits): Data read from the FIFO memory.
  - `wr_cnt` (8 bits): The current write pointer value.
  - `rd_cnt` (8 bits): The current read pointer value.
