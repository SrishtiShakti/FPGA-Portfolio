# 8-Operation Arithmetic Logic Unit (ALU) - Verilog

## Description

This project implements a simple **32-bit ALU** in Verilog, capable of performing 8 different operations based on a 3-bit `Op_code` input. The ALU can perform addition, subtraction, bitwise AND, bitwise OR, and simple increment and decrement operations.

## Operations

The ALU performs the following operations depending on the `Op_code` value:

- `Op_code = 000`: **Y = A** (Pass A)
- `Op_code = 001`: **Y = A + B** (Addition)
- `Op_code = 010`: **Y = A - B** (Subtraction)
- `Op_code = 011`: **Y = A & B** (Bitwise AND)
- `Op_code = 100`: **Y = A | B** (Bitwise OR)
- `Op_code = 101`: **Y = A + 1** (Increment A)
- `Op_code = 110`: **Y = A - 1** (Decrement A)
- `Op_code = 111`: **Y = B** (Pass B)

## Inputs and Outputs

- **Inputs**:
  - `Op_code` (3 bits): Selects the operation to perform.
  - `A` (32 bits): First operand.
  - `B` (32 bits): Second operand.

- **Outputs**:
  - `Y` (32 bits): Result of the operation.

## Code

The ALU is implemented in Verilog using a `case` statement inside an always block, triggered by changes to `Op_code`, `A`, or `B`.

 
