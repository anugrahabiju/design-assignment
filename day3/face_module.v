`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:25:08
// Design Name: 
// Module Name: face_module
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


module face_module(
input clk,
input [7:0] sensor_in,
output reg [7:0] sensor_out
);

always @(posedge clk)
begin
sensor_out <= sensor_in;
end

endmodule

 
