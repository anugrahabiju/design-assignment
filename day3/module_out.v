`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:32:04
// Design Name: 
// Module Name: module_out
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


module module_out(
input clk,
input rst,
input [7:0] data_in,
output reg [7:0] d_out
);

reg [1:0] count;

always @(posedge clk)
begin
if(rst)
begin
count<=0;
d_out<=0;
end
else
begin
if(count==2)
begin
d_out<=data_in;
count<=0;
end
else
begin
count<=count+1;
end
end
end

endmodule

