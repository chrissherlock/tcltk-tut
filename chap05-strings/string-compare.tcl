#!/usr/bin/env tclsh

puts [string compare Minnestora Michigan]
# => 1

puts [string compare Alamba Michigan]
# => -1

puts [string compare Michigan Michigan]
# -> 0

puts [string equal cat cat]
# => 1

puts [string equal dog Dog]
# => 0

puts [string equal -nocase dog Dog]
# => 1

puts [string equal -length 3 catalyst Catalyst]
# => 1
