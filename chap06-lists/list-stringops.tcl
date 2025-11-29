#!/usr/bin/env tclsh

# split on comma
set x "Anita Sanchez,35,VP Marketing"
set y 39,72,,-17,

puts [split $x ,]
# => {Anita Sanchez} 35 {VP Marketing}

puts [split $y ,]
# => 39 72 {} -17 {}

# split on several characters (either a or b)
puts [split xbaybz ab] ;# this is x [b] [a] y [b] z
# => x {} y z

# opposite of split!
puts [join {a b c}]
# => abc

puts [join {{} usr include sys types.h} /]
# => /usr/include/sys/types.h

set x {24 112 5}
expr [join $x +]
# => 141

