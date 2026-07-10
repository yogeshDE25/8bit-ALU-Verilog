# 8-bit Arithmetic Logic Unit (ALU)

## Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) in Verilog HDL capable of performing arithmetic and logical operations based on a 3-bit opcode.

## Features

- Addition - opcode 000
- Subtraction - opcode 001
- Multiplication - opcode 010
- Left Shift - opcode 011
- Right Shift - opcode 100
- Bitwise AND - opcode 101
- Bitwise OR - opcode 110
- Bitwise XOR - opcode 111

## Inputs

| Signal | Width |
|--------|-------|
| a      | 8     |
| b      | 8     |
| opcode | 3     |

## Output

| Signal | Width |
|--------|-------|
| out    | 16    |
| cout   | 1     |

## Directory Structure

RTL/
TB/
Simulation/
Docs/

## Future Improvements

- Overflow flag
- Zero flag
- Negative flag
- Signed arithmetic support