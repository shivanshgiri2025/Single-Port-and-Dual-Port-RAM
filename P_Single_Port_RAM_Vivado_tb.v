`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2026 22:45:44
// Design Name: 
// Module Name: P_Single_Port_RAM_Vivado_tb
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
// Single Port RAM testbench

module P_Single_Port_RAM_Vivado_tb;

  reg [7:0] write_data;      // input data
  reg [5:0] address;         // address
  reg write_enable;          // write enable
  reg clock;                 // clock
  wire [7:0] read_data;      // output data

  P_Single_Port_RAM_Vivado spr1(
    .write_data(write_data),
    .address(address),
    .write_enable(write_enable),
    .clock(clock),
    .read_data(read_data)
  );

  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1, P_Single_Port_RAM_Vivado_tb);

      clock = 1'b1;
      forever #5 clock = ~clock;
    end

  initial
    begin
      write_data = 8'h01;
      address = 5'd0;
      write_enable = 1'b1;
      #10;

      write_data = 8'h02;
      address = 5'd1;
      #10;

      write_data = 8'h03;
      address = 5'd2;
      #10;

      address = 5'd0;
      write_enable = 1'b0;
      #10;

      address = 5'd1;
      #10;

      address = 5'd2;
      #10;

      write_data = 8'h04;
      address = 5'd1;
      write_enable = 1'b1;
      #10;

      address = 5'd1;
      write_enable = 1'b0;
      #10;

      address = 5'd3;
      #10;
    end

  initial
    #90000 $stop;

endmodule