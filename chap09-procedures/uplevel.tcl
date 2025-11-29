#!/usr/bin/env tclsh

set x goodbye

proc test {} {
    # runs script one level up
    uplevel {puts $x}
}

test
# => goodbye

proc do {varName first last body} {
    upvar $varName v
    for {set v $first} {$v <= $last} {incr v} {
        uplevel $body
    }
}

set squares {}
do i 1 5 {
    lappend squares [expr $i*$i]
}

puts $squares
# => 1 4 9 16 25
