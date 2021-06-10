vlib work
vlib activehdl

vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/xil_defaultlib

vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../MiniMIPS32.srcs/sources_1/ip/inst_rom/sim/inst_rom.v" \


vlog -work xil_defaultlib \
"glbl.v"

