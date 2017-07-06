transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Final/ULA.vhd}
vcom -93 -work work {E:/Final/REG_BANK.vhd}
vcom -93 -work work {E:/Final/MI.vhd}
vcom -93 -work work {E:/Final/MD.vhd}
vcom -93 -work work {E:/Final/SOM.vhd}
vcom -93 -work work {E:/Final/MUX.vhd}
vcom -93 -work work {E:/Final/SIGN_EX.vhd}
vcom -93 -work work {E:/Final/MIPS_UNICYCLE.vhd}
vcom -93 -work work {E:/Final/CU.vhd}
vcom -93 -work work {E:/Final/CULA.vhd}
vcom -93 -work work {E:/Final/MUX7.vhd}
vcom -93 -work work {E:/Final/MUX5.vhd}

vcom -93 -work work {E:/Final/MIPS_TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  MIPS_TESTBENCH

add wave *
view structure
view signals
run 300 ns
