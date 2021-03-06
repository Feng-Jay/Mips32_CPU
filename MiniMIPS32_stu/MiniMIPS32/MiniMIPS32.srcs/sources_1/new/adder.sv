`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 10:19:25
// Design Name: 
// Module Name: adder
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


module adder
    #(parameter Width =32)
    (
    input logic [Width-1:0] a,
    input logic [Width-1:0] b,
    output logic [Width-1:0] res
    );
    
    assign res=a+b;
endmodule
