📌 Overview
This VHDL module implements a 32-bit Arithmetic Logic Unit (ALU) that performs 8 basic operations based on a 3-bit Op_code.

🔧 Entity Interface

Port	Mode	Width	Description
Op_code	In	std_logic_vector(2 downto 0)	Operation selector
A	In	std_logic_vector(31 downto 0)	Operand A
B	In	std_logic_vector(31 downto 0)	Operand B
Y	Out	std_logic_vector(31 downto 0)	Output result
🧮 Supported Operations

Op_code	Operation	Description
"000"	Transfer A	Passes input A directly to output Y
"001"	Addition	Y = A + B
"010"	Subtraction	Y = A - B
"011"	Bitwise AND	Y = A AND B
"100"	Bitwise OR	Y = A OR B
"101"	Increment A	Y = A + 1
"110"	Decrement A	Y = A - 1
Others	Transfer B	Default: Pass B to output Y
🧪 Simulation
Use any VHDL simulator (like ModelSim) to test the module.

You can include a waveform setup file like wave.do or use a simulation testbench to verify functionality.

📁 Notes
Uses ieee.numeric_std for arithmetic operations.

Avoids latch inference by using a fully specified case statement.
