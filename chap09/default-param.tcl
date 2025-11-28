#!/usr/bin/env tclsh

# second parameter has default value
proc inc {value {increment 1}} {
    expr $value+$increment
}

inc 42 3
# => 45

inc 42
# => 43

# if last value in argument list is args then proc may be called with
# varying number of args
proc sum {args} {
    set total 0
    foreach val $args {
        set total [expr {$total + $val}]
    }
    
    return $total
}

puts [sum 1 2 3 4 5]
# => 15

puts sum
# => 0
