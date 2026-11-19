`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2026 14:50:11
// Design Name: 
// Module Name: Project_Dual_Port__RAM_Vivado
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
// Dual Port RAM module design

module Project_Dual_Port_RAM_Vivado(
  input [7:0] input_a, input_b, //input data
  input [5:0] address_a, address_b, //Port A and Port B address
  input write_a, write_b, //write enable for Port A and Port B
  input clock, //clk
  output reg [7:0] output_a, output_b //output data at Port A and Port B
);

  reg [7:0] memory [63:0]; //8*64 bit ram

  always @ (posedge clock)
    begin
      if(write_a)
        memory[address_a] <= input_a;
      else
        output_a <= memory[address_a];
    end

  always @ (posedge clock)
    begin
      if(write_b)
        memory[address_b] <= input_b;
      else
        output_b <= memory[address_b];
    end

endmodule
