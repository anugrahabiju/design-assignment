# Day 3 - FIFO Based Data Transfer System

## Objective

The objective of Day 3 was to understand data transfer between modules operating at different speeds using a FIFO buffer. A complete system consisting of a Face Module, FIFO, and Module Out was designed and verified using Verilog HDL.

---

# 1. FIFO

## Description

A First In First Out (FIFO) memory was implemented using Verilog HDL. The FIFO stores incoming data and provides it to the output in the same order in which it was written.

### Features

- 8-bit data width
- Write operation
- Read operation
- Full flag
- Empty flag

### Files

- fifo.v
- fifo_tb.v


**Figure 1: FIFO Simulation Waveform**

---<img width="1578" height="601" alt="fifo_tb" src="https://github.com/user-attachments/assets/1e979184-bc16-4625-9233-5fa1ffdef2d3" />


# 2. Face Module

## Description

The Face Module acts as a high-speed data source. It receives 8-bit input data and transfers it to the FIFO on every positive edge of the clock.

### Files

- face_module.v

# 3. Module Out

## Description

Module Out acts as a slow output device. The module updates its output after every three clock cycles, demonstrating communication between a fast producer and a slow consumer.

### Files

- module_out.v


# 4. Top Module

## Description

The Top Module integrates the Face Module, FIFO, and Module Out into a single system.

Data Flow:

Face Module → FIFO → Module Out

The FIFO acts as a buffer between the high-speed source and the slow output device.

### Files

- top_module.v

**Figure 4: Top Module Schematic**

---<img width="1555" height="774" alt="top module" src="https://github.com/user-attachments/assets/5158e4fe-d822-48eb-9e2e-5bac3b86449b" />


# 5. Top Module Testbench

## Description

A testbench was developed to verify the complete functionality of the integrated system. Different 8-bit input values were applied and the output behavior was observed through simulation.

### Files

- top_module_tb.v

**Figure 5: Top Module Simulation Waveform**

---<img width="1546" height="786" alt="top module tb" src="https://github.com/user-attachments/assets/516fcb4b-ca17-4a6e-8423-309ed8076a1e" />

---

## Result

The FIFO, Face Module, Module Out, and Top Module were successfully implemented and verified using simulation and synthesis in Vivado. The FIFO effectively buffered data between the high-speed source and the slow output module.
