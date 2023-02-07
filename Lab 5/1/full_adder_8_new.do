onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /full_adder_8/ww_A
add wave -noupdate -radix unsigned /full_adder_8/ww_B
add wave -noupdate /full_adder_8/ww_Cin
add wave -noupdate -radix unsigned /full_adder_8/ww_Y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {35525 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1 ns}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 7 0 /full_adder_8/A 
wave create -pattern none -portmode in -language vhdl -range 7 0 /full_adder_8/B 
wave create -pattern none -portmode in -language vhdl /full_adder_8/Cin 
wave create -pattern none -portmode out -language vhdl -range 7 0 /full_adder_8/Y 
wave create -pattern none -portmode out -language vhdl /full_adder_8/Cout 
WaveCollapseAll -1
wave clipboard restore
