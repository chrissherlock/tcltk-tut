#!/usr/bin/env tclsh

proc plus {a b} { expr {$a+$b} }

puts [plus 3 4]
# => 7

puts [plus 3 -1]
# => 2

# early return
proc fac {x} {
    if {$x <= 1} {
        return 1
    }
    return [expr {$x * [fac [expr {$x-1}]]}]
}

puts [fac 4]
# => 24

puts [fac 0]
# => 1
    
