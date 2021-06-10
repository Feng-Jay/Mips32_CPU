`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 09:39:31
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] srca,
    input [31:0] srcb,
    input [2:0] aluop,
    output logic [31:0] alures,
    output logic zero
    );

    always_comb begin
        case(aluop) begin
            3'b010: alures=signed'(srca)+signed'(srcb);

            default: alures=32'b0000_0000_0000_0000_0000_0000_0000_0000;
        end
    end

    assign zero=!alures;

endmodule
