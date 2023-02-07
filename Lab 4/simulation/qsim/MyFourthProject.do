onerror {quit -f}
vlib work
vlog -work work MyFourthProject.vo
vlog -work work MyFourthProject.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DataPath_vlg_vec_tst
vcd file -direction MyFourthProject.msim.vcd
vcd add -internal DataPath_vlg_vec_tst/*
vcd add -internal DataPath_vlg_vec_tst/i1/*
add wave /*
run -all
