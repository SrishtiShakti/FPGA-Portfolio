# AAC2M4H2 - 8x9 FIFO Memory (VHDL)

This folder contains the VHDL implementation of an 8-word by 9-bit wide FIFO (First-In-First-Out) memory module designed as part of **AAC2M4H2**.

## 📌 Description

The FIFO supports the following features:
- 8 memory locations, each 9 bits wide.
- Separate read and write pointers with independent clear and increment controls.
- Write enable and read enable signals.
- Three-state output for bus sharing (outputs high-impedance when not enabled).
- 8:1 data multiplexer for read access.
- Decoder-based logic for write enable selection.

This design simulates a basic FIFO memory system typically used in digital systems for buffering data between different clock domains or processes.

## 🧠 Key Concepts

- **Register Array**: 8 registers (array of 9-bit vectors) store the data.
- **Write/Read Pointers**: Independently controlled using clear (`WrPtrClr`, `RdPtrClr`) and increment (`WrInc`, `RdInc`) signals.
- **Decoder + MUX**: Decoder logic enables one write location; MUX selects one read location.
- **Tristate Output**: Ensures `DataOut` only drives when read is enabled (`rden = '1'`).

