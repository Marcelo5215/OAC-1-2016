transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aluno/Desktop/Final/ULA.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/REG_BANK.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/MI.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/MD.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/MUX.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/REG.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/SIGN_EX.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/MIPS_UNICYCLE.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/CU.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/CULA.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/MUX7.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/Final/MUX5.vhd}

vcom -93 -work work {C:/Users/aluno/Desktop/Final/MIPS_TESTBENCH.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  MIPS_TESTBENCH

add wave *
view structure
view signals
run 200 ns
