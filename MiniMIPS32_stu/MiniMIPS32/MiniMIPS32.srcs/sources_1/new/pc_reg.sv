`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/12 10:34:24
// Design Name: 
// Module Name: pc_reg
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


module pc_reg(
    input logic sys_clk,
    input logic sys_rst,
    input logic [31:0] in,

    output logic [31:0] out
    );

    always_ff @(posedge sys_clk) begin
        if(!sys_rst) out<=32'b0000_0000_0000_0000_0000_0000_0000_0000;
        else out<=in;
    end

endmodule
