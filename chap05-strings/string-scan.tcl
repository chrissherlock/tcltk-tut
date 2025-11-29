#!/usr/bin/env tclsh

# scans and finds 2 matches, puts 16 into a and 24.2 into b
puts [scan "16 units, 24.2% margin" "%d units, %f" a b]
# => 2

puts "$a $b"
# => 16 24.2

proc next c {
    scan $c %c i
    format %c [expr {$i+1}]
}

puts [next a]
# => b

puts [next 9]
# => :

proc forceDecimal {x} {
    set count [scan $x {%lld %c} n c]

    if {$count != 1} {
        error "not an integer: \"$x\""
    }

    return $n
}

set val 0987
puts [expr { [forceDecimal $val] + 1 }]
# => 988

puts [forceDecimal xyz]
# => not an integer: "xyz"
