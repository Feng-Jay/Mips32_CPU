`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 10:39:40
// Design Name: 
// Module Name: data_route
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


module data_route(
    input logic sys_clk,
    input logic sys_rst,
    input logic [31:0] instr,
    input logic [2:0] aluop,
    input logic we3,
    input logic regwrite,
    input logic regdest,
    input logic alusrc,
    input logic [2:0] alucontrol,
    input logic branch,
    input logic memwrite,
    input logic memtoreg,

    output logic [31:0] daddr,
    output logic [31:0] din,
    output logic [31:0] iaddr
    );
    logic select_reg;
    logic write_reg;
    logic write_enable;
    logic zero;
    logic [31:0] rd1;
    logic [31:0] rd2;
    logic [31:0] alures;
    //mux2 select_write_reg #(5) (.srca(instr[20:16]),.srcb(instr[15:11]),.select(select_reg),.out(write_reg));

    registers regs(.sys_clk(sys_clk),.sys_rst(sys_rst),.a1(instr[25:21]),.a2(instr[20:16]),.a3(instr[20:16]),.wd(),.we(write_enable),.rd1(rd1),.rd2(rd2));
    alu alu(.srca(rd1),.srcb(rd2),.aluop(3'b010),.alures(alures),.zero(zero));
endmodule
