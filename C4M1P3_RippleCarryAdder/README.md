# 4-bit Ripple Carry Adder with Carry-In

## Overview

This project implements a **4-bit ripple carry adder** with a carry-in (`cin`) and outputs both a 4-bit `sum` and a carry-out (`cout`). The adder is built using basic full adder logic, chained together to perform binary addition of two 4-bit unsigned numbers (`A` and `B`) with an optional carry input.

This is part of the Numbers and Displays module (C4M2P1) of the FPGA Design for Embedded Systems Specialization.

## Inputs/Outputs

| Signal | Direction | Width | Description                      |
|--------|-----------|-------|----------------------------------|
| `A`    | Input     | 4-bit | First operand                    |
| `B`    | Input     | 4-bit | Second operand                   |
| `cin`  | Input     | 1-bit | Carry input                      |
| `sum`  | Output    | 4-bit | Result of `A + B + cin`          |
| `cout` | Output    | 1-bit | Carry output from MSB addition   |

## Simulation Strategy

- **Simulation Tool:** ModelSim (via Quartus Prime integration)
- **Testbench:** A VHDL testbench was provided to validate functionality.
- **Vector File:** `vectorh.out` was automatically generated to verify bit-level correctness.
- **Waveform File:** A `.do` file was used to visualize waveform and confirm correct signal propagation and carry behavior.
- **Initial 'U' Behavior:** The simulation begins with `cin = U` (undefined) before the clock starts, which is expected and does not affect test results.

## Design Files

- `adder.vhdl` – Structural VHDL implementation of the 4-bit adder
- `adder_tb.vhdl` – VHDL testbench provided by the instructor
- `vectorh.out` – Output file from simulation showing test vector results
- `wave.do` – Waveform script file for ModelSim
- `adder.qpf`, `adder.qsf`, etc. – Quartus Prime project files

## Testbench Results

The design was simulated successfully, and the adder produced correct outputs for all combinations of inputs. Below is a sample of the output from `vectorh.out`:
A = 0000  B = 1111  cin = 1  SUM = 0000  cout = 1
A = 0001  B = 1111  cin = 1  SUM = 0001  cout = 1
A = 0010  B = 0000  cin = 0  SUM = 0010  cout = 0
A = 0100  B = 1011  cin = 1  SUM = 0000  cout = 1
A = 0111  B = 1001  cin = 0  SUM = 0000  cout = 1
...
