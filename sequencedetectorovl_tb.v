`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2026 13:47:52
// Design Name: 
// Module Name: sequencedetectorovl_tb
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


module sequencedetectorovl_tb();
reg clk_tb, rst_tb, din_tb;
wire detected_tb;
sequencedetectorovl dut(clk_tb,rst_tb,din_tb,detected_tb);
initial
begin
    clk_tb = 0;
    rst_tb = 0;
    din_tb = 0;
end

always #5 clk_tb = ~clk_tb;

initial
begin
    rst_tb = 1;
    #10;
    rst_tb = 0;

    #10;
    din_tb = 1;

    #10;
    din_tb = 1;

    #10;
    din_tb = 1;

    #10;
    din_tb = 0;     // First 1110 detected

    #10;
    din_tb = 1;

    #10;
    din_tb = 1;

    #10;
    din_tb = 1;

    #10;
    din_tb = 0;     // Second 1110 detected
end

endmodule

  
