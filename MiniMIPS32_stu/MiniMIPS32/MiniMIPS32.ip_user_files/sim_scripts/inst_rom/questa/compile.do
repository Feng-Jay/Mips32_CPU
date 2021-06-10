vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/dist_mem_gen_v8_0_12
vlib questa_lib/msim/xil_defaultlib

vmap dist_mem_gen_v8_0_12 questa_lib/msim/dist_mem_gen_v8_0_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work dist_mem_gen_v8_0_12 -64 "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" "+incdir+D:/Xilinx/Vivado/2017.3/data/xilinx_vip/include" \
"../../../../MiniMIPS32.srcs/sources_1/ip/inst_rom/sim/inst_rom.v" \


vlog -work xil_defaultlib \
"glbl.v"

