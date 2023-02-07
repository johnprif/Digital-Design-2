transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {myFifthProject.vho}

vcom -93 -work work {C:/altera/13.0sp1/lab_5/simulation/modelsim/full_adder_8_tb.vhd}

vsim -t 1ps -L cycloneii -L gate_work -L work -voptargs="+acc"  full_adder_8

add wave *
view structure
view signals
run -all
