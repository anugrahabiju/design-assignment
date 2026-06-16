# Transaction Class for FIFO Verification (SystemVerilog)

## Overview
This project implements a SystemVerilog transaction class named `trans_f` for FIFO verification.  
The transaction class is used to generate randomized stimulus for testing FIFO operations such as reset, write, and read. It also helps monitor FIFO status signals like `full` and `empty` during simulation.

The project demonstrates the use of **class-based verification** and **constraint-driven randomization** to create efficient and realistic test scenarios.

---

## Objective
The objective of this project is to design a transaction class for FIFO verification using constrained random stimulus generation.

Main goals of this project:
- Understand SystemVerilog class-based verification
- Generate randomized test scenarios using constraints
- Apply weighted distributions for realistic stimulus generation
- Verify FIFO behavior under various operating conditions
- Improve debugging and functional coverage

---

## Class Description
The transaction class contains input and output signals required for FIFO verification.

### Signals

| Signal | Type | Description |
|--------|------|-------------|
| `rst_tb` | rand bit | Reset signal |
| `wrenb_tb` | rand bit | Write enable signal |
| `rdenb_tb` | rand bit | Read enable signal |
| `data_in_tb` | rand bit [7:0] | Input data |
| `data_out_tb` | bit [7:0] | Output data |
| `full` | bit | FIFO full indicator |
| `empty` | bit | FIFO empty indicator |

---

## Constraints
Weighted randomization is used to generate realistic test conditions.

### Reset Distribution
- Reset inactive (`0`) → 80%
- Reset active (`1`) → 20%

### Write Enable Distribution
- Write disabled (`0`) → 20%
- Write enabled (`1`) → 80%

### Read Enable Distribution
- Read disabled (`0`) → 80%
- Read enabled (`1`) → 20%

### Data Input Distribution
Special input values are randomized with weights:
- `8'hFF` → Highest probability
- `8'hAA` → Medium probability
- `8'h55` → Medium probability

This ensures frequently used patterns are tested more often.

---

## Display Function
The display function prints transaction details during simulation.

Example output:
```text
rst_tb=0 wrenb_tb=1 rdenb_tb=0 din=ff dout=00 full=0 empty=1
```

This helps in debugging and verification.

## Result
The transaction class was successfully implemented and verified through simulation.  
Randomized stimulus was generated according to the specified constraints, and FIFO control signals behaved as expected.
