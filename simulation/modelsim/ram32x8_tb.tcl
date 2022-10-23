
set labelCount 7                                             
set uniqueLabel 194415840

############################Common TCL Procedures################################

proc IntegerToBinary  {intValue width} {
	set nextvaltmp ""
	set nextval ""
	for {set i $width} {$i > 0 } {set i [expr {$i - 1}]} {
		if {[expr {$intValue % 2}] == 0} { 
			append nextvaltmp "0"
		} else {
			append nextvaltmp "1" 
		}
		set intValue [expr {$intValue / 2}]
	}
	for {set i [expr {$width - 1}]} {$i >=  0 } {set i [expr {$i - 1}]} {
		append nextval [string range $nextvaltmp $i $i]
	}
	return $nextval
}
proc CreateRangeUpCounter {startValue loopCount step curTime period unit width driveType signal} {
     global uniqueLabel labelCount
     set absTime ""
     append absTime "@" $curTime 
     set value $startValue 
     set label $uniqueLabel 

     for {set i 0 } {$i <= $loopCount} {incr i} {
             set labelCount [expr {$labelCount + 1}]
             append label "_"
             append label $labelCount

             if {$absTime != "@0" && $::now != $curTime} {
                     when -label $label "\$now = $absTime $unit" " 
                             set whenArray($label) $label
                             noforce $signal
                             force -$driveType $signal [eval IntegerToBinary $value $width] 0 
                     "
             }
             if {$step < [expr pow(2, $width)]} {
             	set value [expr {$value + $step}]
             }
             set curTime [expr {$period + $curTime}] 
             set absTime ""
             append absTime "@" $curTime 
             set label $uniqueLabel
     }
}

#################################################################################


##Editing for Signal sim:/ram32x8/address
# "Counter Pattern"(Range-Up) : step = 1 Range(00000-11111)
# Start Time = 0 ps, End Time = 1 us, Period = 30 ns
#################################################################################
        noforce sim:/ram32x8/address
        force -freeze sim:/ram32x8/address [eval IntegerToBinary 0 5] 0

when -label 194415840_1 {$now = @1000 ps} {
        set whenArray(194415840_1) 194415840_1
        noforce sim:/ram32x8/address
        force -freeze sim:/ram32x8/address  00000 0 ps
}

when -label 194415840_2 {$now = @1000 ps} {
        set whenArray(194415840_2) 194415840_2
        noforce sim:/ram32x8/address
        force -freeze sim:/ram32x8/address 00000 0 ps
}


##Editing for Signal sim:/ram32x8/clock
# "Clock Pattern" : dutyCycle = 50
# Start Time = 0 ps, End Time = 1 us, Period = 20 ns
#################################################################################


noforce sim:/ram32x8/clock
force -freeze sim:/ram32x8/clock 0 0 ps,1 10000 ps  -repeat 20000 ps -cancel @1000000 ps

        noforce sim:/ram32x8/clock
        force -freeze sim:/ram32x8/clock  0 0 ps, 1 10000 ps

when -label 194415840_3 {$now = @1000 ps} {
        set whenArray(194415840_3) 194415840_3
        noforce sim:/ram32x8/clock
        force -freeze sim:/ram32x8/clock 0 0 ps
}


##Editing for Signal sim:/ram32x8/data
# "Counter Pattern"(Range-Up) : step = 1 Range(00000000-11111111)
# Start Time = 0 ps, End Time = 1 us, Period = 40 ns
#################################################################################
        noforce sim:/ram32x8/data
        force -freeze sim:/ram32x8/data [eval IntegerToBinary 0 8] 0

when -label 194415840_4 {$now = @1000 ps} {
        set whenArray(194415840_4) 194415840_4
        noforce sim:/ram32x8/data
        force -freeze sim:/ram32x8/data  00000000 0 ps
}

when -label 194415840_5 {$now = @1000 ps} {
        set whenArray(194415840_5) 194415840_5
        noforce sim:/ram32x8/data
        force -freeze sim:/ram32x8/data 00000000 0 ps
}


##Editing for Signal sim:/ram32x8/wren
# "Counter Pattern"(Range-Up) : step = 1 Range(0-1)
# Start Time = 0 ps, End Time = 1 us, Period = 50 ns
#################################################################################
        noforce sim:/ram32x8/wren
        force -freeze sim:/ram32x8/wren [eval IntegerToBinary 0 1] 0

when -label 194415840_6 {$now = @1000 ps} {
        set whenArray(194415840_6) 194415840_6
        noforce sim:/ram32x8/wren
        force -freeze sim:/ram32x8/wren  0 0 ps
}

when -label 194415840_7 {$now = @1000 ps} {
        set whenArray(194415840_7) 194415840_7
        noforce sim:/ram32x8/wren
        force -freeze sim:/ram32x8/wren 0 0 ps
}
