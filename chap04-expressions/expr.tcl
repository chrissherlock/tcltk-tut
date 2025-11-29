#!/usr/bin/env tclsh

puts (8+4) * 6.2
# => 74.4

if {$x < 2} { puts "less than 2" }
# => less than 2

set x 6
puts ($x > 4) && ($x < 10)
# => 1

puts [expr {8&&2}]
# => 1

puts [expr {8&2}]
# => 0

set $a 1
set $b 2

# choice operator
puts [expr {($a < $b) ? $a : $b}
# => 1
