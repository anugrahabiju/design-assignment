# Day 2 - Sequential and Combinational Logic Design

## Objective

The objective of Day 2 was to understand the implementation of basic sequential and combinational circuits using Verilog HDL. The designs were simulated and verified using Vivado.

---

# 1. SR Flip-Flop

## Description

An SR (Set-Reset) Flip-Flop is a sequential circuit used to store one bit of information. The output changes according to the Set and Reset inputs on the clock edge.

### Inputs
- clk
- s
- r

### Output
- q

### Files
- sr_ff.v
- sr_ff_tb.v


**Figure 1: SR Flip-Flop Simulation**

<img width="1271" height="615" alt="sr_ff" src="https://github.com/user-attachments/assets/33f8a0b8-9177-4747-b7a8-1b8773641bbb" />
---

# 2. D Flip-Flop

## Description

A D Flip-Flop transfers the input data to the output on the active clock edge and stores it until the next clock event.

### Inputs
- clk
- d

### Output
- q

### Files
- d_ff.v
- d_ff_tb.v


**Figure 2: D Flip-Flop Simulation**

<img width="1255" height="558" alt="d_ff" src="https://github.com/user-attachments/assets/9fb6664e-58bd-4acb-a2b2-77a21f9822e4" />
---

# 3. 4×2 Encoder

## Description

A 4×2 Encoder converts one active input out of four input lines into a 2-bit binary output code.

### Inputs
- i0
- i1
- i2
- i3

### Outputs
- y1
- y0

### Files
- encoder4x2.v
- encoder4x2_tb.v

**Figure 3: 4×2 Encoder Simulation**

---<img width="1250" height="605" alt="encoder4_2" src="https://github.com/user-attachments/assets/574b2174-3ae2-454f-a690-165f890656f9" />


# RTL Schematics

RTL synthesis was performed for all designs to verify the hardware implementation.


**Figure 4: SR Flip-Flop RTL Schematic**

<img width="1606" height="527" alt="sr_ff" src="https://github.com/user-attachments/assets/e6db26cb-d92e-4685-8027-4442b748a015" />


**Figure 5: D Flip-Flop RTL Schematic**

<img width="1584" height="572" alt="d_ff" src="https://github.com/user-attachments/assets/30f9801e-1f6c-4237-9256-65232b3dc03b" />


**Figure 6: 4×2 Encoder RTL Schematic**

---<img width="1554" height="597" alt="encoder4_2" src="https://github.com/user-attachments/assets/f3d71f20-3c6c-4145-a515-dddc4a43c478" />



## Result

The SR Flip-Flop, D Flip-Flop, and 4×2 Encoder were successfully implemented using Verilog HDL. Simulation waveforms verified correct functionality, and RTL synthesis confirmed successful hardware implementation.
