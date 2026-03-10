transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rissun57/Desktop/Git/FPGA-Verilog1/HW1/Fadd4.vhd}
vcom -93 -work work {/home/rissun57/Desktop/Git/FPGA-Verilog1/HW1/fadd.vhd}

vlog -vlog01compat -work work +incdir+/home/rissun57/Desktop/Git/FPGA-Verilog1/HW1 {/home/rissun57/Desktop/Git/FPGA-Verilog1/HW1/Tb_Fadd4.v}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  Tb_Fadd4

add wave *
view structure
view signals
run 500 ns
