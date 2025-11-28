#!/usr/bin/env tclsh

# copy a list from variable a to variable b, reversing the order
# of the elements along the way

puts [set a [list a b c d e]]

set b {}
set i [expr {[llength $a] - 1}]
while {$i >= 0} {
    lappend b [lindex $a $i]
    incr i -1
}

puts $b

puts $a

set c {}
for {set i [expr {[llength $a] - 1}]} {$i >= 0} {incr i -1} {
    puts [lappend c [lindex $a $i]]
}

puts $c

puts $a
set d {}
foreach i $a {
    set d [linsert $d 0 $i]
}

puts $d

foreach {x y} {a b c d e} {
    puts "<$x> <$y>"
}
