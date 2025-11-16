#!/usr/bin/env tclsh

puts [string index "Sample string" 3]
# => p

set i 1
puts [string index "Sample string" end-$i]
# => i

puts [string index "Sample string" 5+$i]
# => s

incr i
puts [string index "Sample string" 5+$i]
# => t

puts [string range "Sample string" 3 7]
# => ple s

puts [string range "Sample string" 3 end]
# => ple string

puts [string first th "There is the tub where I bathed today"]
# => 9

puts [string first th "There is the tub where I bathed today" 12]
# => 27

puts [string last th "There is the tub where I bathed today"]
# => 27
