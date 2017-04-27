#########################################
# Copyright (C) 2016 Project Bonfire    #
#                                       #
# This file is automatically generated! #
#             DO NOT EDIT!              #
#########################################

vlib work

# Include files and compile them

# packages
vcom -cover bcesfx "network_files/component_pack.vhd"
vcom -cover bcesfx "plasma_RTL/mlite_pack.vhd"

# router and NI components
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/Arbiter_in_one_hot_checkers.vhd"
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/Arbiter_in_one_hot_with_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/Arbiter_out_one_hot_pseudo_checkers.vhd"
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/arbiter_out_one_hot_with_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/allocator_logic_pseudo_checkers.vhd"
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/allocator_credit_counter_logic_pseudo_checkers.vhd"
vcom -cover bcesfx "network_files/Allocator_with_checkers_with_FI/allocator_with_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/FIFO_one_hot_credit_based_packet_drop_classifier_support_with_checkers_with_FI/FIFO_one_hot_credit_based_packet_drop_classifier_support_checkers.vhd"
vcom -cover bcesfx "network_files/FIFO_one_hot_credit_based_packet_drop_classifier_support_with_checkers_with_FI/FIFO_one_hot_credit_based_packet_drop_classifier_support_with_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/LBDR_packet_drop_with_checkers_with_FI/Cx_Reconf_pseudo_checkers.vhd"
vcom -cover bcesfx "network_files/LBDR_packet_drop_with_checkers_with_FI/Rxy_Reconf_pseudo_checkers.vhd"
vcom -cover bcesfx "network_files/LBDR_packet_drop_with_checkers_with_FI/LBDR_packet_drop_routing_part_pseudo_checkers.vhd"
vcom -cover bcesfx "network_files/LBDR_packet_drop_with_checkers_with_FI/LBDR_packet_drop_with_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/ParityChecker_for_LBDR.vhd"
vcom -cover bcesfx "network_files/counter_threshold.vhd"
vcom -cover bcesfx "network_files/Fault_injector.vhd"
vcom -cover bcesfx "network_files/shift_register_serial_in.vhd"
vcom -cover bcesfx "network_files/NI.vhd"
vcom -cover bcesfx "network_files/xbar.vhd"

vcom -cover bcesfx "network_files/customized_routers/Router_32_bit_NW_credit_based_packet_drop_classifier_SHMU_will_full_set_of_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/customized_routers/Router_32_bit_NE_credit_based_packet_drop_classifier_SHMU_will_full_set_of_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/customized_routers/Router_32_bit_SW_credit_based_packet_drop_classifier_SHMU_will_full_set_of_checkers_with_FI.vhd"
vcom -cover bcesfx "network_files/customized_routers/Router_32_bit_SE_credit_based_packet_drop_classifier_SHMU_will_full_set_of_checkers_with_FI.vhd"

# IJTAG-related components
vcom -cover bcesfx "IJTAG_files/SIB_mux_pre_FCX_SELgate.vhd"
vcom -cover bcesfx "IJTAG_files/ScanMux.vhd"
vcom -cover bcesfx "IJTAG_files/ScanRegister.vhd"
vcom -cover bcesfx "IJTAG_files/SReg.vhd"
vcom -cover bcesfx "IJTAG_files/AsyncDataRegisterAdapter.vhd"

# plasma components
vcom -cover bcesfx "plasma_RTL/memory_sim.vhd"
vcom -cover bcesfx "plasma_RTL/alu.vhd"
vcom -cover bcesfx "plasma_RTL/bus_mux.vhd"
vcom -cover bcesfx "plasma_RTL/cache.vhd"
vcom -cover bcesfx "plasma_RTL/control.vhd"
vcom -cover bcesfx "plasma_RTL/ddr_ctrl.vhd"
vcom -cover bcesfx "plasma_RTL/eth_dma.vhd"
vcom -cover bcesfx "plasma_RTL/mem_ctrl.vhd"
vcom -cover bcesfx "plasma_RTL/mult.vhd"
vcom -cover bcesfx "plasma_RTL/pc_next.vhd"
vcom -cover bcesfx "plasma_RTL/pipeline.vhd"

# for normal simulation use this:
# vcom -cover bcesfx "plasma_RTL/ram.vhd"
# to use the verilog of the memory use the following 2 lines:
vlog -reportprogress 300 -work work "plasma_RTL/ts1n40lpb4096x32m4s_210b_tt1p1v25c.v"
vcom -cover bcesfx "plasma_RTL/ram_wrapper.vhd"

vcom -cover bcesfx "plasma_RTL/reg_bank_tri_port.vhd"
vcom -cover bcesfx "plasma_RTL/shifter.vhd"
vcom -cover bcesfx "plasma_RTL/uart.vhd"
vcom -cover bcesfx "plasma_RTL/mlite_cpu.vhd"
vcom -cover bcesfx "plasma_RTL/plasma.vhd"
vcom -cover bcesfx "plasma_RTL/NoC_Node.vhd"

vcom -cover bcesfx "network_files/network_2x2_customized_packet_drop_SHMU_credit_based_with_checkers.vhd"
vcom -cover bcesfx "network_files/network_2x2_customized_packet_drop_SHMU_credit_based_with_checkers_with_PE_top.vhd"

#vcom -cover bcesfx "Testbenches/network_2x2_NI_PE_credit_based_tb.vhd"
vcom "Testbenches/network_2x2_NI_PE_credit_based_tb_top.vhd"

# Start the simulation
vsim -coverage -voptargs="+cover=bcestfx" work.tb_network_2x2

# Draw waves
# do do_files/wave_2x2.do
do do_files/wave_2x2_with_top.do
# Run the simulation for 4ms
run 36000000 ns
# do do_files/fault_inject_links_top_3000ns.do 	#use to inject files in the simulation(not using IJTAG)
coverage report -file coverage_report.txt -byfile -assert -directive -cvg -codeAll