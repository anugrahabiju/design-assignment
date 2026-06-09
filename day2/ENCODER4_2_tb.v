`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 11:35:03
// Design Name: 
// Module Name: ENCODER4_2_tb
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


module ENCODER4_2_tb();

reg [3:0] d_tb;
wire [1:0] b_tb;
integer m;

ENCODER4_2 dut(d_tb,b_tb);

initial
begin
 d_tb=0;
end
initial 
begin 
for(m=0;m<16;m=m+1)
begin
#10;
d_tb=m;
end
end
initial 
begin
 $monitor("d_tb=%b b_tb=%b",d_tb,b_tb);
 end

endmodule
