transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/Lab1 {E:/2025_2/FPGA-Verilog/Lab1/T_FF.v}
vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/Lab1 {E:/2025_2/FPGA-Verilog/Lab1/counter4.v}
vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/Lab1 {E:/2025_2/FPGA-Verilog/Lab1/D_FF.v}

vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/Lab1 {E:/2025_2/FPGA-Verilog/Lab1/Tb_counter4.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Tb_counter4

add wave *
view structure
view signals
run 260 ns
