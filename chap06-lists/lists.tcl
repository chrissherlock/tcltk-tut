#!/usr/bin/env tclsh

puts [lindex {John Anne Mary Jim} 1]
# => Anne

puts [llength {a b c d}]
# => 4

puts [llength a]
# => a

puts [llength {}]
# => 0

puts [set x {John Anne Mary Jim}]
# => John Anne Mary Jim

set test1 {a b\ c d}
puts [llength $test1]
# => 3

puts [lindex $test1 1]
# => b
#    c

set test3 {a \} b \{ c}
puts [llength $test3]
# => 5

puts [lindex $test3 1]
# => }

puts [lindex {a b {c d e} f} 2
# => c d e

set elements {{a b} {c {d e f}} g}
puts [lindex $elements 1 1 2]
# => f

# same as...
puts [lindex [lindex [lindex $elements 1] 1] 2
# => f

# get subelement of {a b}
puts [lindex $elements {0 0}]
# => a
