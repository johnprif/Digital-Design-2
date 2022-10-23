onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /ram32x8/address
add wave -noupdate /ram32x8/clock
add wave -noupdate -radix unsigned /ram32x8/data
add wave -noupdate /ram32x8/wren
add wave -noupdate -radix unsigned /ram32x8/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ns} {1 us}
view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 4 0 /ram32x8/address 
wave create -pattern none -portmode in -language vhdl /ram32x8/clock 
wave create -pattern none -portmode in -language vhdl -range 7 0 /ram32x8/data 
wave create -pattern none -portmode in -language vhdl /ram32x8/wren 
wave create -pattern none -portmode out -language vhdl -range 7 0 /ram32x8/q 
wave modify -driver freeze -pattern counter -startvalue 00000 -endvalue 11111 -type Range -direction Up -period 30ns -step 1 -repeat forever -range 4 0 -starttime 0ns -endtime 1000ns NewSig:/ram32x8/address 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/ram32x8/clock 
wave modify -driver freeze -pattern counter -startvalue 00000000 -endvalue 11111111 -type Range -direction Up -period 40ns -step 1 -repeat forever -range 7 0 -starttime 0ns -endtime 1000ns NewSig:/ram32x8/data 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 500ns -step 1 -repeat forever -starttime 0ns -endtime 1000ns NewSig:/ram32x8/wren 
{wave export -file ram32x8_tb -starttime 0 -endtime 1000 -format vhdl -designunit ram32x8} 
WaveCollapseAll -1
wave clipboard restore
