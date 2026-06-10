`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 21:47:17
// Design Name: 
// Module Name: top_module_tb
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


module top_module_tb();

reg clk,rst;
reg [7:0] sensor_in;

wire [7:0] d_out;

top_module dut(clk,rst,sensor_in,d_out);

initial
begin
clk=0;
rst=0;
sensor_in=0;
end

always #5 clk=~clk;

initial
begin

rst=1;
#10;
rst=0;

#10;
sensor_in=8'd10;

#10;
sensor_in=8'd20;

#10;
sensor_in=8'd30;

#10;
sensor_in=8'd40;

#10;
sensor_in=8'd50;

#10;
sensor_in=8'd60;

#10;
sensor_in=8'd70;

#10;
sensor_in=8'd80;

end

initial
begin
$monitor("time=%0t sensor_in=%d d_out=%d",
          $time,sensor_in,d_out);
end

endmodule

