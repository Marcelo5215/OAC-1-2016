transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MIPS_UNICYCLE.vho}

vcom -93 -work work {E:/Final/MIPS_TESTBENCH.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /utt=MIPS_UNICYCLE_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  MIPS_TESTBENCH

add wave *
view structure
view signals
run 300 ns
