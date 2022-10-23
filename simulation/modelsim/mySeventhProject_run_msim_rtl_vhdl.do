transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/altera/13.0sp1/lab7/RAM_255.vhd}
vcom -2008 -work work {C:/altera/13.0sp1/lab7/Sort_255.vhd}

