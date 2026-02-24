transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Administrator/Desktop/FPGA-Verilog/0224/Adder/Adder0_vhd.vhd}

vlog -sv -work work +incdir+C:/Users/Administrator/Desktop/FPGA-Verilog/0224/Adder {C:/Users/Administrator/Desktop/FPGA-Verilog/0224/Adder/Tb_Adder0.sv}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Tb_Adder0

add wave *
view structure
view signals
run 100 ns
