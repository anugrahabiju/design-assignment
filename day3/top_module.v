`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:39:02
// Design Name: 
// Module Name: top_module
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


module top_module(
input clk,
input rst,
input [7:0] sensor_in,
output [7:0] d_out
);

wire [7:0] sensor_out;
wire [7:0] fifo_out;
wire full,empty;

face_module m1(clk,sensor_in,sensor_out);

fi_fo m2(clk,rst,1'b1,1'b1,sensor_out,fifo_out,full,empty);

module_out m3(clk,rst,fifo_out,d_out);

endmodule

   
