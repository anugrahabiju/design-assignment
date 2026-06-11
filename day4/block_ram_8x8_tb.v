`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 19:03:35
// Design Name: 
// Module Name: block_ram_8x8_tb
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


module block_ram_8x8_tb();

reg clk;
reg arstn;
reg wrnb;
reg [2:0] addr;
reg [7:0] data_in;

wire [7:0] data_out;

block_ram_8x8 dut(
clk,
arstn,
wrnb,
addr,
data_in,
data_out
);

initial
begin

clk=0;
arstn=1;
wrnb=0;
addr=0;
data_in=0;

end

always #5 clk=~clk;

initial
begin

arstn=0;
#10;

arstn=1;
#10;

// Write Operation

wrnb=1;

addr=3'b000;
data_in=8'd10;
#10;

addr=3'b001;
data_in=8'd20;
#10;

addr=3'b010;
data_in=8'd30;
#10;

addr=3'b011;
data_in=8'd40;
#10;

// Read Operation

wrnb=0;

addr=3'b000;
#10;

addr=3'b001;
#10;

addr=3'b010;
#10;

addr=3'b011;
#10;

end

initial
begin
$monitor("addr=%d wrnb=%b data_in=%d data_out=%d",
addr,wrnb,data_in,data_out);
end

endmodule
