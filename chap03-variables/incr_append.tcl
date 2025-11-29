#!/usr/bin/env tclsh

# how to use incr
set x 43
puts [incr x 12]
puts [incr x]

# create a new variable (set to 0) and increment
puts [incr y]
puts [incr z 42]

# append adds text to end of variable
set msg ""
foreach i {1 2 3 4 5} {
    append msg "$i squared is [expr $i*$i]\n"
}

puts $msg
