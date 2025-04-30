# AAC2M4P2_SinglePortRAM_VHDL

This folder contains the VHDL implementation and testbench for a 128x32 single-port RAM module.

## 🧾 Files Included

- `AAC2M4P2.vhd`: VHDL code for the 128x32 Single-Port RAM.
- `AAC2M4P2_tb.vhdp`: Testbench for simulation using ModelSim.
- `wave.do`: Waveform configuration file for ModelSim.
- `vectorh.out`, `myvectorh.out`: Simulation output vectors.

## 🛠️ Tools Used

- Quartus Prime 16.1
- ModelSim-Intel FPGA Edition

## 📌 Description

The RAM module has:
- 128 memory locations, each 32 bits wide
- Single-port read/write access
- Address and data lines appropriately sized
- Simulation verified using ModelSim with waveform analysis

## 🧪 Testbench

The testbench writes a sequence of values to the RAM and reads them back to verify correctness.

## ✅ Status

✔️ Simulated successfully  
✔️ Verified waveform and output vectors

---

**Author:** Srishti Shakti  
