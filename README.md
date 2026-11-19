# RAM Design Using Verilog HDL

## Description
This repository contains two separate RAM designs implemented using Verilog HDL in Xilinx Vivado:
1. Single-Port RAM
2. Dual-Port RAM

Both designs were created and simulated separately in Xilinx Vivado.

## 1. Single-Port RAM

### Specifications
- Memory Size: 64 × 8 bits
- 64 memory locations
- 8-bit data width
- 6-bit address input

### Inputs
- `write_data`: 8-bit data to be stored.
- `address`: 6-bit memory address.
- `write_enable`: Controls read and write operations.
- `clock`: Controls memory operations.

### Output
- `read_data`: 8-bit data read from memory.

### Working
- When `write_enable = 1`, data is written into the selected memory location.
- When `write_enable = 0`, the address is stored in the read address register.
- Stored data is available at the output.

### Project Files
- `P_Single_Port_RAM_Vivado.v` – Main RAM design.
- `P_Single_Port_RAM_Vivado_tb.v` – Testbench for simulation.

## 2. Dual-Port RAM

### Specifications
- Memory Size: 64 × 8 bits
- 64 memory locations
- 8-bit data width
- Two ports: Port A and Port B
- Separate 6-bit address inputs for both ports.

### Inputs
- `input_a`, `input_b`: 8-bit input data for both ports.
- `address_a`, `address_b`: 6-bit memory addresses.
- `write_a`, `write_b`: Write enable controls for both ports.
- `clock`: Controls memory operations.

### Outputs
- `output_a`: 8-bit output data from Port A.
- `output_b`: 8-bit output data from Port B.

### Working
- Both ports can access the shared memory.
- Each port has its own address, input data and write enable signal.
- When the corresponding write enable is 1, data is written into the selected memory location.
- When the corresponding write enable is 0, data is read from the selected memory location.
- Both ports operate on the rising edge of the clock.

### Project Files
- `Project_Dual_Port_RAM_Vivado.v` – Main RAM design.
- `Project_Dual_Port_RAM_Vivado_tb.v` – Testbench for simulation.

## Tools Used
- Xilinx Vivado
- Verilog HDL

## Simulation
Both RAM designs are tested using Verilog testbenches to verify read and write operations.
