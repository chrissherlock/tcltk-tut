#!/usr/bin/env tclsh
set a 44
puts [expr $a*4]

set b [expr $a*4]
puts $b

set x \$a
puts $x

set newline \n
puts $newline
