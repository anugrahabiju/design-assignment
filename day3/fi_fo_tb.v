`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:16:50
// Design Name: 
// Module Name: fi_fo_tb
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


module fi_fo_tb();

reg clk,rst,wrenb,rdenb;
reg [7:0] data_in;

wire [7:0] data_out;
wire full,empty;

fi_fo dut(clk,rst,wrenb,rdenb,data_in,data_out,full,empty);

initial
begin
clk=0;
rst=0;
wrenb=0;
rdenb=0;
data_in=0;
end

always #5 clk=~clk;

initial
begin
rst=1;
#10;
rst=0;

wrenb=1;
data_in=8'd10;
#10;

data_in=8'd20;
#10;

data_in=8'd30;
#10;

data_in=8'd40;
#10;

wrenb=0;

#20;

rdenb=1;
#40;

rdenb=0;
end

initial
begin
$monitor("data_in=%d data_out=%d full=%b empty=%b",
          data_in,data_out,full,empty);
end

endmodule
