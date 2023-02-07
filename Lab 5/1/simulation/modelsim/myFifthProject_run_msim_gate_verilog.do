transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {myFifthProject.vo}

vcom -93 -work work {C:/altera/13.0sp1/lab_5/simulation/modelsim/full_adder_8_tb.vhd}
