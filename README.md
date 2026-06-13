# Mini RISC-V Processor

A simplified RISC-V processor implemented in Verilog HDL.

## Project Overview

This project implements the basic RTL building blocks of a simplified RISC-V processor.

The goal of this project is to gain hands-on experience in:

- Computer Architecture
- Digital Design
- RTL Development
- Verilog HDL
- VLSI Fundamentals

This processor includes the main hardware modules required for instruction execution and data processing.

## Main Modules

- Program Counter (PC)
- Instruction Memory
- Data Memory
- Register File
- ALU (Arithmetic Logic Unit)
- Decoder
- Control Unit
- CPU Top Module

## Repository Structure

```text
mini-riscv-processor/
├── rtl/
│ ├── alu.v
│ ├── control_unit.v
│ ├── cpu_top.v
│ ├── data_memory.v
│ ├── decoder.v
│ ├── instruction_memory.v
│ ├── pc.v
│ └── register_file.v
├── tb/
│ └── cpu_tb.v
├── docs/
│ └── architecture.md
└── README.md
```

## Architecture

The processor is built using modular RTL blocks:

Instruction Memory → Decoder → Control Unit → Register File → ALU → Data Memory

The Program Counter controls instruction flow and sequencing.

## Verification

A Verilog testbench is included in:

```text
tb/cpu_tb.v
```

The testbench generates clock and reset signals for functional verification.

## Skills Demonstrated

- Verilog HDL
- RTL Design
- Digital Logic Design
- Computer Architecture
- Processor Design
- Testbench Development
- VLSI Fundamentals

## Future Improvements

- Full RV32I Instruction Set
- Pipeline Architecture
- Hazard Detection
- Branch Prediction
- FPGA Implementation
- Automated Verification

## Author

Omran Shibli

Electrical and Electronics Engineering Student

Interested in:
- VLSI Design
- Computer Architecture
- Embedded Systems
- RTL Development
- FPGA Design
