# Summer Internship 2026 – TKM College of Engineering

## About

This repository contains the design assignments, verification testbenches, and project work completed as part of the Summer Internship Program in VLSI and Digital Design.

The work was carried out using Verilog HDL and SystemVerilog, covering both RTL Design and Functional Verification concepts. All designs were developed, simulated, and verified using AMD Vivado 2023.2.

The repository includes fundamental digital design implementations, protocol-based designs, memory architectures, verification environments, and a CNN-based hardware accelerator project.

---

## Repository Maintainer

**Anugraha Biju**  
VLSI Engineering Student

---

## Internship Details

**Summer Internship 2026**  
**TKM College of Engineering, Karicode**

**Duration:** 15 Days

---

## Tools Used

- Verilog HDL
- SystemVerilog
- AMD Vivado 2023.2
- Git & GitHub

---

## Repository Structure

### Day 1
- Ripple Carry Adder
- BCD Counter

### Day 2
- Decoder
- D Flip-Flop
- SR Flip-Flop
- Universal Shift Register

### Day 3
- Face Detector
- Sequence Detector

### Day 4
- Block Memory Generator

### Day 5
- BCD Adder Interface
- FIFO Interface

### Day 6
- FIFO Transaction

### Day 7
- APB Protocol

---

# Project

## CNN Inference Accelerator

A SystemVerilog-based hardware implementation of a Convolutional Neural Network (CNN) inference accelerator designed for handwritten digit classification.

The project implements the complete CNN inference pipeline in hardware, including image buffering, convolution operations, activation functions, pooling stages, fully connected layers, and classification output generation.

### Design Modules

- Image BRAM
- Pixel Stream Generator
- Convolution Engine
- Convolution Block
- ReLU Activation
- Max Pooling
- Kernel Memory
- Runtime Weight Loader
- Fully Connected Layer
- Flatten Layer
- CNN Top Module
- Configuration Package

### Verification Environment

The verification environment was developed using SystemVerilog and follows a modular testbench architecture.

Components include:

- Interface
- Transaction Class
- Generator
- Driver
- Monitor
- Agent
- Scoreboard
- Environment
- Test

### Verification Flow

1. MNIST image data is loaded from text files.
2. The Generator creates randomized test transactions.
3. The Driver writes image data into the DUT.
4. The CNN processes the image and generates classification scores.
5. The Monitor captures output class values.
6. The Scoreboard compares DUT predictions against expected labels.
7. Pass/Fail statistics are generated.

### Key Features

- Modular RTL Architecture
- SystemVerilog Verification Environment
- Handwritten Digit Classification
- Functional Simulation in Vivado
- Automated Result Checking using Scoreboard
- Support for Runtime Weight Loading
- MNIST Dataset Based Testing

---

## Learning Outcomes

Through this internship, the following concepts were explored:

- Combinational Logic Design
- Sequential Logic Design
- Finite State Machines (FSM)
- Memory-Based Architectures
- FIFO Communication
- APB Protocol
- RTL Design Methodology
- Functional Verification
- SystemVerilog OOP Concepts
- Verification Components and Mailboxes
- Scoreboard-Based Validation
- CNN Hardware Acceleration
- Digital Design Debugging and Simulation

---

## Acknowledgements

This work was completed as part of the Summer Internship Program conducted at **TKM College of Engineering**, providing practical exposure to Digital Design, RTL Development, Functional Verification, and Hardware Acceleration using Verilog and SystemVerilog.


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
