**Day 1 - Verilog HDL Design and Verification**

**Objective*:

The objective of Day 1 was to understand the basics of Verilog HDL design, simulation, and verification using Vivado.
The assigned tasks focused on implementing arithmetic circuits and verifying their functionality through testbenches.

**Task 1: Ripple Carry Adder**:

**Description*:

A Ripple Carry Adder (RCA) was designed using Verilog HDL. 
The circuit performs binary addition by cascading full adders, where the carry output from one stage becomes the carry input to the next stage.

**Files**:

*ripple_carry_adder.v

*ripple_carry_adder_tb.v

**Inputs**:

A,
B,
Cin

**Outputs**:

Sum,
Cout

**Verification**:

A Verilog testbench was developed to apply different input combinations and verify the generated sum and carry outputs.


<img width="1113" height="551" alt="rca" src="https://github.com/user-attachments/assets/a847a24e-4c35-4fd4-af67-84f1e0964afa" />



**Description**

A BCD (Binary Coded Decimal) Adder was implemented using Verilog HDL. The design performs decimal addition and applies BCD correction whenever the binary sum exceeds 9.

**Files**

bcd_adder.v,
bcd_adder_tb.v

**Inputs**

A[3:0],
B[3:0],
Cin

**Outputs**

Sum[3:0],
Cout

**Verification**

The design was verified using a Verilog testbench by applying multiple BCD input combinations and observing the corrected decimal outputs.

<img width="1472" height="596" alt="bcd" src="https://github.com/user-attachments/assets/c3a3b920-7a3b-424a-9ee1-8f1d0863d20d" />



