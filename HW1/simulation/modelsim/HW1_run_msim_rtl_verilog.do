transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/HW1/simulation {E:/2025_2/FPGA-Verilog/HW1/simulation/fadd.v}
vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/HW1 {E:/2025_2/FPGA-Verilog/HW1/Fadd4.v}

vlog -vlog01compat -work work +incdir+E:/2025_2/FPGA-Verilog/HW1 {E:/2025_2/FPGA-Verilog/HW1/Tb_Fadd4.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Tb_Fadd4

add wave *
view structure
view signals
run 500 ns
