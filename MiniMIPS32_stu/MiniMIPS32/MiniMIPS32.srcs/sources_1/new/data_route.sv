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
    input logic [31:0] instr,//输入的指令
    input logic [2:0] aluop,//输入的ALU操作码
    input logic we3,//寄存器写权限
    input logic [31:0] wd3,//寄存器写数据
    /*input logic regdest,*/
    /*input logic alusrc,*/
    /*input logic branch,*/
    /*input logic memtoreg,*/

    output logic [31:0] din,/*写入data_rom的数据*/

    output logic [31:0] daddr,/*instr_rom和data_rom的地址*/
    output logic [31:0] iaddr
    );
    logic zero;
    logic [31:0] rd1;
    logic [31:0] rd2;
    logic [31:0] pc;
    //mux2 select_write_reg #(5) (.srca(instr[20:16]),.srcb(instr[15:11]),.select(select_reg),.out(write_reg));

    registers regs(.sys_clk(sys_clk),.sys_rst(sys_rst),.a1(instr[25:21]),.a2(instr[20:16]),.a3(instr[20:16]),.wd(wd3),.we(we3),.rd1(rd1),.rd2(rd2));
    alu alu(.srca(rd1),.srcb(rd2),.aluop(3'b010),.alures(daddr),.zero(zero));

    pc_reg pc_next(.sys_clk(sys_clk),.sys_rst(sys_rst),.in(pc),.out(iaddr));

endmodule
