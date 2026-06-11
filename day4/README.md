# Day 4 - Block RAM 8x8 Modeling Using Verilog HDL

## Objective

The objective of Day 4 was to understand the working of Block Memory Generator IP and model a Block RAM using Verilog HDL. The design was verified through simulation and synthesis in Vivado.

---

# Block RAM 8x8

## Description

A Block RAM (BRAM) was implemented using Verilog HDL. The memory supports read and write operations and stores 8-bit data values. An active-low asynchronous reset is used to initialize the memory contents.

The design consists of:

- Clock input
- Asynchronous reset (`arstn`)
- Write enable (`wrnb`)
- Address input
- Data input (`data_in`)
- Data output (`data_out`)

When the write enable signal is asserted, data is written into the selected memory location. When write enable is deasserted, data is read from the selected memory location and provided at the output.

---

## Files

- block_ram_8x8.v
- block_ram_8x8_tb.v

---

## Inputs

- clk
- arstn
- wrnb
- addr[2:0]
- data_in[7:0]

## Output

- data_out[7:0]

---

## Verification

A Verilog testbench was developed to verify both write and read operations. Different data values were written into memory locations and later read back to confirm correct functionality.


**Figure 1: Block RAM Simulation Waveform**
<img width="1577" height="808" alt="block_ram_8x8" src="https://github.com/user-attachments/assets/ee75fec2-adaa-4faf-8caf-b1fb05e455ff" />


## Synthesis

The design was synthesized successfully in Vivado and the generated schematic was verified.

**Figure 2: Block RAM Schematic**

---<img width="1531" height="814" alt="block_ram_schm" src="https://github.com/user-attachments/assets/ce5071ff-b3e1-4e37-a23e-989369ae4b1c" />


## Result

The Block RAM model was successfully implemented using Verilog HDL. Read and write operations were verified through simulation, and the synthesized schematic confirmed correct hardware implementation.
