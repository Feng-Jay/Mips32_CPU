`include "defines.sv"

module MiniMIPS32(
    input  logic cpu_clk,
    input  logic cpu_rst_n,
    input  logic [31:0] inst,
    input  logic [31:0] dout,
    
    output logic [31:0] daddr,
    output logic we,
    output logic [31:0] din,
    output logic [31:0] iaddr
    );
    
endmodule
