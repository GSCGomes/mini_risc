transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mini_risc.vho}

vcom -93 -work work {C:/Users/guilh/Projects/mini_risc/source/tb_register.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=mini_risc_vhd.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_register

add wave *
view structure
view signals
run -all