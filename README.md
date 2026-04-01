# skinny-aead-fpga
Area-efficient FPGA implementation of SKINNY-AEAD block cipher using VHDL

# FPGA Implementation of SKINNY-AEAD Block Cipher

## Overview
This project presents an area-efficient FPGA implementation of the SKINNY-AEAD lightweight cryptographic algorithm using VHDL. The design focuses on optimizing hardware utilization, power consumption, and delay.

## Key Features
- Lightweight cryptographic design for IoT applications
- Optimized S-box using combinational logic
- Implemented on Artix-7 FPGA (AC701)
- Reduced delay and power consumption

## Tools Used
- VHDL
- Xilinx Vivado
- Artix-7 FPGA

## Architecture
The design implements the SKINNY cipher round function:
- Sub Cells
- Add Constants
- Add Round Tweakey
- Shift Rows
- Mix Columns

## Results

| Metric | Before | After |
|--------|--------|-------|
| LUTs | 533 | 544 |
| Flip-Flops | 591 | 591 |
| Power | 3.234 W | 3.159 W |
| Delay | 11.001 ns | 10.887 ns |

## Project Structure
- src/ → VHDL source code
- simulations/ → testbench and waveform outputs
- results/ → performance graphs
- docs/ → full project report

## Future Work
- Further power optimization
- Side-channel attack resistance
- ASIC implementation

## Authors
- Jeff Jerry
