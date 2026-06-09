`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 18:09:19
// Design Name: 
// Module Name: usr
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


module usr(
    input clk,
    input rst,
    input shift,
    input load,
    input sin,
    input [1:0] mode,
    input [3:0] pin,
    output reg sout,
    output reg [3:0] pout
);

reg [3:0] temp;

always @(posedge clk)
begin
    if(rst)
    begin
        temp <= 4'b0000;
        pout <= 4'b0000;
        sout <= 1'b0;
    end

    else
    begin
        case(mode)

        2'b00: begin              
            if(shift)
            begin
                temp <= temp >> 1'b1;
                temp[3] <= sin;
                sout <= temp[0];
            end
        end

        2'b01: begin            
            if(shift)
            begin
                temp <= temp >> 1'b1;
                temp[3] <= sin;
            end

            if(load)
            begin
                pout <= temp;
            end
        end

        2'b10: begin             
            if(load)
            begin
                temp <= pin;
            end

            else if(shift)
            begin
                sout <= temp[0];
                temp <= temp >> 1'b1;
            end
        end

        2'b11: begin              
            if(load)
            begin
                pout <= pin;
            end
        end

        endcase
    end
end
endmodule
