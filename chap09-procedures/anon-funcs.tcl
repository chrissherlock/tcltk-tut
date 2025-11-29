#!/usr/bin/env tclsh

puts [
apply { {args} {
    set total 0
    foreach val $args {
        set total [expr {$total + $val}]
    }
    return $total
} } 1 2 3 4 5 6 7
]
# => 28

set states {California Delaware Hawaii Indiana Iowa}

puts [
lsort -command { apply { {e1 e2} {
    expr {[string length $e1] - [string length $e2]}
} } } $states
]
# => Iowa Hawaii Indiana Delaware California
