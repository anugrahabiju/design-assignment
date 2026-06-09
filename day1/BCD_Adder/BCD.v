`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 13:43:09
// Design Name: 
// Module Name: BCD
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


module BCD(input [3:0]A,[3:0]B,
input cin,
output [3:0]S,
output cout);
wire w1,w2,w3,w4;
wire [3:0]S1;
wire [3:0]corr;
rca R1(.A(A),.B(B),.cin(cin),.S(S),.cout(w1));
and(w2,S1[1],S[3]);
and(w3,S1[2],S1[3]);
or(w4,w2,w3,w1);
assign corr={1'b0,w4,w4,1'b0};
rca R2(.A(sum1),.B(corr),.cin(1'b0),.S(S),.cout(cout) );
endmodule
