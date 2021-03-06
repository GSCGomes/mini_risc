#!/bin/bash

COMPONENTS_PATH="../components"
TESTBENCHES_PATH="../testbenches"
UTIL_PATH="../util"

ghdl --clean

# Analyzing vhdl files
ghdl -a $UTIL_PATH/custom_types.vhd
ghdl -a $COMPONENTS_PATH/register_file.vhd
ghdl -a $COMPONENTS_PATH/two_bits_shifter.vhd
ghdl -a $COMPONENTS_PATH/memd.vhd
ghdl -a $COMPONENTS_PATH/multiplicador.vhd
ghdl -a $COMPONENTS_PATH/mux41.vhd
ghdl -a $COMPONENTS_PATH/hdl_register.vhd
ghdl -a $COMPONENTS_PATH/alu.vhd
ghdl -a $COMPONENTS_PATH/extensor.vhd
ghdl -a $COMPONENTS_PATH/memi.vhd
ghdl -a $COMPONENTS_PATH/mux21.vhd
ghdl -a $COMPONENTS_PATH/pc.vhd
ghdl -a $COMPONENTS_PATH/adder.vhd
ghdl -a $COMPONENTS_PATH/seven_seg_decoder.vhd
ghdl -a $COMPONENTS_PATH/interrupt_address_registers.vhd
ghdl -a $COMPONENTS_PATH/interrupt_ctl.vhd
ghdl -a $COMPONENTS_PATH/timer.vhd
ghdl -a $COMPONENTS_PATH/single_cycle_control_unit.vhd
ghdl -a $COMPONENTS_PATH/single_cycle_data_path.vhd
ghdl -a $COMPONENTS_PATH/single_cycle_processor.vhd
ghdl -a $TESTBENCHES_PATH/tb_single_cycle_processor.vhd

# Elaborating SoC
ghdl -e tb_single_cycle_processor
ghdl -r tb_single_cycle_processor --vcd=tb_single_cycle_processor.vcd --stop-time=1us

# Wave view
gtkwave -f tb_single_cycle_processor.vcd

