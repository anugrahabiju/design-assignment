`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 15:38:00
// Design Name: 
// Module Name: SR_ff_tb
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


module SR_ff_tb();

    reg s_tb, r_tb, rst_tb, clk_tb;
    wire q_tb, qbar_tb;

    SR_ff dut (s_tb, r_tb, rst_tb, clk_tb, q_tb, qbar_tb);

    initial begin
        {s_tb, r_tb, rst_tb, clk_tb} = 4'b0000; 
    end
  always #5 clk_tb = ~clk_tb;

    initial begin
        rst_tb = 1;
        #10;
        
        rst_tb = 0;
        s_tb = 0;
        r_tb = 0;
        #10;
        
        s_tb = 0;
        r_tb = 1;
        #10;
        
        s_tb = 1;
        r_tb = 0;
        #10;
        
        s_tb = 1;
        r_tb = 1;
        #10;
        
        s_tb = 1;
        r_tb = 1;
        #10;
        
        $finish; 
    end

endmodule

   
