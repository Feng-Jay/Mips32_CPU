`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 11:08:51
// Design Name: 
// Module Name: mux2
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


module mux2
    #(parameter Width=32)
    (
    input logic [Width-1:0] srca,
    input logic [Width-1:0] srcb,
    input logic select,
    output logic [Width-1:0] out
    );

    assign out=select ? srcb : srca;

endmodule
