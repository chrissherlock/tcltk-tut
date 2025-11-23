#!/usr/bin/env tclsh

lassign {a b c} x y z ;# Produces an empty return value
puts "<$x>, <$y>, <$z>"
# => <a>, <b>, <c>

lassign {d e} x y z   ;# Produces an empty return value
puts "<$x> <$y> <$z>"
# => <d>, <e>, <>

puts [lassign {f g h i} x y}]
# => h i
puts "<$x>, <$y>"
# => <f>, <g>

# emulate the shift command
puts [set vals {a b c d}]
# a b c d

puts [set vals [lassign $vals nextArg]]
# => b c d
puts $nextArg
# => a

puts [set vals [lassign $vals nextArg]]
# => c d
puts $nextArg
# => b
