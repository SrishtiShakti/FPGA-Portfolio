🧠 FSM – Finite State Machine (Verilog)
📌 Overview
This Verilog module implements a three-state finite state machine (FSM) with the following states:

A → B → C → A, based on input In1.

Output Out1 is 1 only in state C, otherwise 0.

🔧 Module Details

Signal	Direction	Description
CLK	Input	Clock signal (positive edge)
RST	Input	Asynchronous reset (active low)
In1	Input	Input driving state transitions
Out1	Output	High only in State C
💡 State Transitions
State A: If In1 == 1 → Go to State B, else stay.

State B: If In1 == 0 → Go to State C, else stay.

State C: If In1 == 1 → Go to State A, else stay.

🛠 Output Behavior
Out1 = 1 only in State C, otherwise 0.
