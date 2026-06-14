# BCD Adder Verification Using SystemVerilog Interface

## Objective

To verify the functionality of a BCD Adder using a SystemVerilog interface and testbench.

## Description

A SystemVerilog interface was used to connect the BCD Adder design and the testbench. Different BCD input combinations were applied and the outputs were verified through simulation.

The interface contains the following signals:

- A [3:0]
- B [3:0]
- cin
- Sum [3:0]
- cout

## Design Hierarchy

full_adder
↓
rca_4bit
↓
bcd_adder

## Test Cases

| A | B | Cin |
|---|---|-----|
| 0 | 0 | 0 |
| 4 | 4 | 0 |
| 7 | 6 | 0 |
| 9 | 9 | 1 |

## Simulation Procedure

1. Create the SystemVerilog interface.
2. Instantiate the BCD Adder inside the testbench.
3. Apply multiple BCD input combinations.
4. Observe the Sum and Carry outputs.
5. Verify the correctness of BCD addition.

## Results

The BCD Adder successfully performed decimal addition and generated valid BCD outputs along with carry whenever required.

<img width="1623" height="642" alt="bcd_adder" src="https://github.com/user-attachments/assets/85029cec-a087-4103-a581-bca77f3b43c1" />





## Conclusion

The BCD Adder was successfully verified using a SystemVerilog interface. The outputs matched the expected BCD addition results for all applied test cases.





# FIFO Verification Using SystemVerilog Interface

## Objective

To verify the functionality of a FIFO memory using a SystemVerilog interface and testbench.

## Description

A SystemVerilog interface was created to establish communication between the FIFO design and the testbench. Write and read operations were performed to verify FIFO functionality.

The interface contains the following signals:

- clk
- rst
- wr_en
- rd_en
- data_in [7:0]
- data_out [7:0]
- full
- empty

## FIFO Operation

### Write Operation

Data is written into the FIFO when:
- wr_en = 1
- full = 0

### Read Operation

Data is read from the FIFO when:
- rd_en = 1
- empty = 0

## Testbench Procedure

1. Apply reset.
2. Write multiple data values into the FIFO.
3. Read the stored values.
4. Verify FIFO behavior through simulation.
5. Monitor full and empty status signals.

## Results

The FIFO successfully stored incoming data and returned the data in First-In First-Out order during read operations.
<img width="1613" height="647" alt="fifo" src="https://github.com/user-attachments/assets/af1eb032-161e-4b0b-8aca-aa112d7dad76" />



## Conclusion

The FIFO design was successfully verified using a SystemVerilog interface. The write and read operations were validated through simulation and the FIFO operated according to FIFO principles.
