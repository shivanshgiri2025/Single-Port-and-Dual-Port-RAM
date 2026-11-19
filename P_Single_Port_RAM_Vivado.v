`timescale 1ns / 1ps
// Single Port RAM module design
module P_Single_Port_RAM_Vivado(
  input [7:0] write_data,      // input data
  input [5:0] address,         // address
  input write_enable,          // write enable
  input clock,                 // clock
  output [7:0] read_data       // output data
);

  reg [7:0] memory [63:0];     // 8 x 64-bit RAM
  reg [5:0] read_address;      // address register

  always @ (posedge clock)
    begin
      if(write_enable)
        memory[address] <= write_data;
      else
        read_address <= address;
    end

  assign read_data = memory[read_address];

endmodule
