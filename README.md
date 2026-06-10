Design Assignment

**Day 1**

**Ripple Carry Adder**
Implemented 4-bit Ripple Carry Adder in Verilog.
Created and verified testbench using simulation.


<img width="1113" height="551" alt="rca" src="https://github.com/user-attachments/assets/68284138-92ea-4965-97c6-56fc38aebe97" />

**BCD Adder**
Implemented BCD Adder in Verilog.
Created and verifed testbench using simulation.
<img width="1472" height="596" alt="bcd" src="https://github.com/user-attachments/assets/ee7631f9-eed6-4d9c-99ec-4e3a93281155" />



**Day 2**

**4x2 Encoder**
Implemented 4x2 Encoder in Verilog.
Testbench created and verified.
<img width="1250" height="605" alt="encoder4_2" src="https://github.com/user-attachments/assets/288020e3-0671-432a-8ac6-5afef35ba4f3" />



**SR Flip-Flop**
Implemented SR Flip-Flop.
Testbench created and verified.
<img width="1271" height="615" alt="sr_ff" src="https://github.com/user-attachments/assets/7f8fe223-0caa-4854-bdc8-663e02f7f02a" />


**D Flip-Flop**
Implemented D Flip-Flop.
Testbench created and verified.

<img width="1255" height="558" alt="d_ff" src="https://github.com/user-attachments/assets/2e69ce51-ba0e-465c-aad8-c2f00230174e" />

**Universal Shift Register**
Implemented Universal Shift Register.
Testbench created and verified.

<img width="1605" height="607" alt="usr" src="https://github.com/user-attachments/assets/c7158fee-57a5-40c7-926b-f31f68baceb6" />


**Sequence Detector (1110 Overlapping)**

Implemented a sequence detector in Verilog using FSM to detect the pattern 1110 with overlapping capability. Designed the corresponding testbench and verified the functionality through simulation waveforms.

<img width="1584" height="595" alt="sequencedetectorovl" src="https://github.com/user-attachments/assets/761389d2-5796-432c-a908-f1323906cd0c" />


# Face Sensor Data Transfer Using FIFO

## Objective
To transfer 8-bit sensor data from a high-speed face module to a slow output module using a FIFO buffer.

## Description
This project consists of three modules:

1. Face Module
2. FIFO
3. Module Out

The Face Module receives 8-bit sensor input data and generates output on every positive edge of the clock. Since the face module operates at a higher speed than the output device, a FIFO is used as an intermediate buffer.

The FIFO stores incoming data and provides synchronized data transfer between the fast producer and slow consumer.

The Module Out acts as a slow device and updates its output only after every three clock cycles. This demonstrates how FIFO can be used to prevent data loss when transferring data between modules operating at different speeds.

## Modules

### Face Module
- Input : clk, sensor_in[7:0]
- Output : sensor_out[7:0]
- Captures sensor data on every positive clock edge.

### FIFO
- Stores 8-bit data.
- Supports write and read operations.
- Provides temporary storage between modules.

<img width="1578" height="601" alt="fifo_tb" src="https://github.com/user-attachments/assets/7e1c872c-ec8f-4adb-aed4-60e0c2ed3348" />


### Module Out
- Receives data from FIFO.
- Generates output after every three clock cycles.
- Simulates a slow device.

### Top Module
- Integrates Face Module, FIFO and Module Out.
- Provides complete data flow from sensor input to final output.

## Inputs
- clk
- rst
- sensor_in[7:0]

## Output
- d_out[7:0]

## Files
- face_module.v
- fi_fo.v
- module_out.v
- top_module.v
- top_module_tb.v

## Result
The design was implemented and simulated in Vivado. The FIFO successfully buffered data between the high-speed face module and the slow output module, demonstrating reliable data transfer between modules operating at different speeds.

<img width="1555" height="774" alt="top module" src="https://github.com/user-attachments/assets/0925e8d2-0c98-4bd5-9347-24a4a51b451d" />

<img width="1546" height="786" alt="top module tb" src="https://github.com/user-attachments/assets/cae97b9d-6777-4444-9c25-a0b538b3114f" />
