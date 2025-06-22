# 🚀 Nios II Soft Processor System on DE10-Lite (Quartus 16.1)

This project is a complete embedded system design using the **Intel (Altera) Quartus Prime 16.1** tools targeting the **Terasic DE10-Lite FPGA board**. It implements a custom processor system using the **NIOS II softcore CPU**, peripherals, and Qsys system integration flow.

> ✅ Note: I do not have access to the DE10-Lite hardware board. This project has been implemented, compiled, and simulated as far as possible in **Quartus Prime** and **Qsys**, without physical deployment or testing on actual hardware.

---

## 🔧 System Features and Components

The system is built using **Qsys IP blocks** and Verilog HDL integration. It includes:

| Component                         | Purpose                                                                 |
|----------------------------------|-------------------------------------------------------------------------|
| `Nios II/f CPU`                  | Main 32-bit soft processor with debug and IRQ support                   |
| `ALTPLL (PLL0 & PLL1)`           | Generates system clocks (80 MHz, 40 MHz, 10 MHz) from base 50 MHz input |
| `Avalon-MM Clock Crossing Bridge`| Allows communication between peripherals running on different clock domains |
| `On-Chip RAM (16 KB)`            | Low-latency memory for code and data storage                            |
| `On-Chip FLASH`                  | Non-volatile memory for storing boot code or data                       |
| `SDRAM Controller`               | External memory interface for large program/data                        |
| `LED and Switch PIO`             | Parallel I/O for LED output and switch input                            |
| `Interval Timer`                 | Generates 1 ms system tick interrupts                                   |
| `SPI Controller`                 | Serial interface for ADXL345 accelerometer                              |
| `Modular ADC`                    | Samples analog input signals using CH1 and sequencer                    |
| `JTAG UART`                      | Provides debugging I/O over JTAG for printf-style debugging             |
| `System ID`                      | Validates software matches hardware system build                        |
| `JTAG to Avalon Master Bridge`   | Enables debug via System Console and Avalon MM access                   |

---

## ⏱️ Clocks and PLL Configuration

| Clock Name     | Source           | Frequency | Purpose                                |
|----------------|------------------|-----------|----------------------------------------|
| `MAX10_CLK1_50`| Board Oscillator | 50 MHz    | Primary clock input to the FPGA        |
| `PLL c0`       | ALTPLL0          | 80 MHz    | System clock for Nios II, SDRAM, RAM   |
| `PLL c1`       | ALTPLL0          | 80 MHz    | SDRAM interface (phase-shifted -90°)   |
| `PLL c2`       | ALTPLL0          | 40 MHz    | Peripheral devices (PIOs, UART, etc.)  |
| `ADC_CLK_10`   | Board Oscillator | 10 MHz    | Input clock for ADC PLL                |
| `ADC PLL c0`   | ALTPLL1          | 10 MHz    | Clock for Modular ADC system           |

---

## ⚙️ Compilation Status

- ✅ Successfully compiled in **Quartus Prime 16.1**.
- ✅ Qsys system saved as `Embed.qsys` and instantiated in `DE10_LITE_Default.v`.
- ✅ Pin assignments set using the DE10-Lite design template.
- ❌ Hardware testing **not performed** (DE10-Lite board not available).

---

## 🧪 Simulations and Testing

- ❌ Simulation and waveform capture **not performed** due to absence of board.
- ✅ RTL and Qsys-level checks completed:
  - Address map setup
  - IRQ configuration
  - Clock domain and reset networks verified
  - PLL and peripheral connectivity validated

---

## 📌 Notes

- Reset and exception vectors were mapped to `onchip_ram`.
- IRQs assigned as:  
  `Timer (0)` → `JTAG UART (1)` → `ADC (2)` → `SPI (3)` → `Slide PIO (4)`
- Global reset and automatic base address assignment were applied via Qsys tools.

