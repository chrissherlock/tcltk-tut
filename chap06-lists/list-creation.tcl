#!/usr/bin/env tclsh

puts [list {a b c} {d e} f {g h i}]
# => {a b c} {d e} f {g h i}

puts [concat {a b} {c {d e f}}]
# => a b c {d e f}

set x {a b c}
set y {d e}
puts [set z [concat $x $y]]
# => a b c d e

puts [lrepeat 3 a]
# => a a a

puts [lrepeat 4 a b c]
# => a b c a b c a b c a b c

puts [lrepeat 3 {a b} c]
# => {a b} c {a b} c {a b} c
