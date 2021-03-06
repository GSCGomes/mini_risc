# Copyright (C) 2017  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: mini_risc.tcl
# Generated on: Tue May 17 20:40:40 2022

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "mini_risc"]} {
		puts "Project mini_risc is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists mini_risc]} {
		project_open -revision mini_risc mini_risc
	} else {
		project_new -revision mini_risc mini_risc
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "MAX 10"
	set_global_assignment -name DEVICE 10M50DAF484C7G
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 17.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "20:06:21  APRIL 28, 2022"
	set_global_assignment -name LAST_QUARTUS_VERSION "17.1.0 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 256
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "Precision Synthesis"
	set_global_assignment -name EDA_LMF_FILE mentor.lmf -section_id eda_design_synthesis
	set_global_assignment -name EDA_INPUT_DATA_FORMAT VQM -section_id eda_design_synthesis
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name EDA_BOARD_DESIGN_SYMBOL_TOOL "ViewDraw (Symbol)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VIEWDRAW -section_id eda_board_design_symbol
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name FLOW_ENABLE_RTL_VIEWER ON
	set_global_assignment -name TIMEQUEST_MULTICORNER_ANALYSIS ON
	set_global_assignment -name VHDL_FILE source/tb_mini_risc.vhd
	set_global_assignment -name VHDL_FILE source/components/unidade_de_controle_ciclo_unico.vhd
	set_global_assignment -name VHDL_FILE source/components/memd.vhd
	set_global_assignment -name VHDL_FILE source/components/ula.vhd
	set_global_assignment -name VHDL_FILE source/components/deslocador.vhd
	set_global_assignment -name VHDL_FILE source/components/extensor.vhd
	set_global_assignment -name VHDL_FILE source/components/banco_registradores.vhd
	set_global_assignment -name VHDL_FILE source/components/memi.vhd
	set_global_assignment -name VHDL_FILE source/components/somador.vhd
	set_global_assignment -name VHDL_FILE source/components/registrador.vhd
	set_global_assignment -name VHDL_FILE source/components/mux41.vhd
	set_global_assignment -name VHDL_FILE source/components/mux21.vhd
	set_global_assignment -name VHDL_FILE source/mini_risc.vhd
	set_global_assignment -name SOURCE_FILE db/mini_risc.cmp.rdb
	set_global_assignment -name EDA_RUN_TOOL_AUTOMATICALLY OFF -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_ENABLE_STATUS TEST_BENCH_MODE -section_id eda_simulation
	set_global_assignment -name EDA_NATIVELINK_SIMULATION_TEST_BENCH tb_mini_risc -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_NAME tb_mini_risc -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb_mini_risc
	set_global_assignment -name EDA_TEST_BENCH_RUN_SIM_FOR "200 ns" -section_id tb_mini_risc
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb_mini_risc -section_id tb_mini_risc
	set_global_assignment -name EDA_TEST_BENCH_NAME tb_alu -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb_alu
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb_alu -section_id tb_alu
	set_global_assignment -name EDA_TEST_BENCH_NAME tb_register -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb_register
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb_register -section_id tb_register
	set_global_assignment -name EDA_TEST_BENCH_NAME tb_control -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb_control
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb_control -section_id tb_control
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name EDA_TEST_BENCH_FILE source/tb_mini_risc.vhd -section_id tb_mini_risc
	set_global_assignment -name EDA_TEST_BENCH_FILE source/tb_alu.vhd -section_id tb_alu
	set_global_assignment -name EDA_TEST_BENCH_FILE source/tb_register.vhd -section_id tb_register
	set_global_assignment -name EDA_TEST_BENCH_FILE source/tb_control.vhd -section_id tb_control
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
