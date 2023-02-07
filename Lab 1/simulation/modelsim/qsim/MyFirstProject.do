onerror {quit -f}
vlib work
vlog -work work MyFirstProject.vo
vlog -work work MyFirstProject.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.my_register_vlg_vec_tst
vcd file -direction MyFirstProject.msim.vcd
vcd add -internal my_register_vlg_vec_tst/*
vcd add -internal my_register_vlg_vec_tst/i1/*
add wave /*
run -all
