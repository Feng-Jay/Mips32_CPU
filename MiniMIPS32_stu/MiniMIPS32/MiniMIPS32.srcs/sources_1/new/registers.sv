`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 08:43:22
// Design Name: 
// Module Name: registers
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


module registers(
    input logic sys_clk,
    input logic sys_rst,
    input logic [4:0] a1,
    input logic [4:0] a2,
    input logic [4:0] a3,
    input logic [31:0] wd,
    input logic we,
    output logic [31:0] rd1,
    output logic [31:0] rd2
    );

    logic [31:0] regs[31:0];
    integer i=0;
    always_ff@(posedge sys_clk) begin
        if(!sys_rst) begin
            for(i=0,i<32,i++) begin
                regs[i]<=32'b0000_0000_0000_0000_0000_0000_0000_0000;
            end
        end
        else if(we==1'b1) regs[a3]<=wd;
    end

    
    always_comb begin
        if(a1!=0)
        rd1=regs[a1];
        else if(a1==0) rd1=32'b0000_0000_0000_0000_0000_0000_0000_0000;
        
        if(a2!=0)
        rd2=regs[a2];
        else if(a2==0) rd2=32'b0000_0000_0000_0000_0000_0000_0000_0000
    end

endmodule
