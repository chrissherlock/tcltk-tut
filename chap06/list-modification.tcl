#!/usr/bin/env tclsh

puts [set x {a b {c d} e}]
# => a b {c d} e

puts [lrange $x 1 3]
# => b {c d} e

puts [lrange $x 0 1]
# => a b

puts [set y {a b {c d} e}]
# => a b {c d} e

puts [linsert $y 2 X Y Z]
# => a b X Y Z {c d} e

puts [linsert $y 0 {X Y} Z]
# => {X Y} Z a b {c d} e

# same as deleting from index 3 to index 6
puts [lreplace {a b {c d} e} 3 3]
# => a b {c d}

# replace b {c d} and insert {W X} Y Z
puts [lreplace {a b {c d} e} 1 2 {W X} Y Z]
# => a {W X} Y Z e

# update a list value in the variable
set person {{Jane Doe} 30 female}
puts [set person [lreplace $person 1 1 31]]
# => (Jane Doe) 31 female

# better to do this...
puts [lset person 1 32]
# => {Jane Doe} 32 female

puts [lset person {0 1} Johnson]
# => {Jane Johnson} 32 female

puts [lset person {0 0} Janice]
# => {Janice Johnson} 32 female
