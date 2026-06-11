`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2026 18:57:41
// Design Name: 
// Module Name: block_ram_8x8
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


module block_ram_8x8(
input clk,
input arstn,
input wrnb,
input [2:0] addr,
input [7:0] data_in,
output reg [7:0] data_out
);

reg [7:0] mem [7:0];
integer i;

always @(posedge clk or negedge arstn)
begin

if(!arstn)
begin

data_out <= 0;

for(i=0;i<8;i=i+1)
mem[i] <= 0;

end

else
begin

if(wrnb==1)
begin
mem[addr] <= data_in;
end

else
begin
data_out <= mem[addr];
end

end

end

endmodule
