`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2026 19:07:30
// Design Name: 
// Module Name: Project_Dual_Port_RAM_Vivado_tb
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
// Dual Port RAM testbench

module Project_Dual_Port_RAM_Vivado_tb;
  reg [7:0] input_a, input_b; //input data
  reg [5:0] address_a, address_b; //Port A and Port B address
  reg write_a, write_b; //write enable for Port A and Port B
  reg clock; //clk
  wire [7:0] output_a, output_b; //output data at Port A and Port B

  Project_Dual_Port_RAM_Vivado dpr1(
    .input_a(input_a),
    .input_b(input_b),
    .address_a(address_a),
    .address_b(address_b),
    .write_a(write_a),
    .write_b(write_b),
    .clock(clock),
    .output_a(output_a),
    .output_b(output_b)
  );

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, Project_Dual_Port_RAM_Vivado_tb);

      clock = 1'b1;
      forever #5 clock = ~clock;
    end

  initial
    begin
      input_a = 8'h33;
      address_a = 6'h01;

      input_b = 8'h44;
      address_b = 6'h02;

      write_a = 1'b1;
      write_b = 1'b1;

      #10;

      input_a = 8'h55;
      address_a = 6'h03;

      address_b = 6'h01;

      write_b = 1'b0;

      #10;

      address_a = 6'h02;

      address_b = 6'h03;

      write_a = 1'b0;

      #10;

      address_a = 6'h01;

      input_b = 8'h77;
      address_b = 6'h02;

      write_b = 1'b1;

      #10;
    end

  initial
    #9000 $stop;

endmodule