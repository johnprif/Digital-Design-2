onerror {quit -f}
vlib work
vlog -work work my_third_lab.vo
vlog -work work my_third_lab.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Fibonacci_vlg_vec_tst
vcd file -direction my_third_lab.msim.vcd
vcd add -internal Fibonacci_vlg_vec_tst/*
vcd add -internal Fibonacci_vlg_vec_tst/i1/*
add wave /*
run -all
