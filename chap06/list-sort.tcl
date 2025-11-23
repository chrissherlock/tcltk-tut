#!/usr/bin/env tclsh

puts [lsort {John Anne Mary Jim}]
# => Anne Jim John Mary
puts [lsort -decreasing {John Anne Mary Jim}]
# => Mary John Jim Anne

# considers string integers, unless -integer is used
puts [lsort {10 1 2}]
# => 1 10 2
puts [lsort -integer {10 1 2}]
# => 1 2 10

# case insensitive vs sensitive
puts [lsort {Peach banana Apple pear}]
# => Apple Peach banana pear
puts [lsort -dictionary {Peach banana Apple pear}]
# => Apple banana Peach pear
puts [lsort -dictionary {n11.gif n1.git n10.git n9.gif}]
# => n1.gif n9.git n10.gif n11.gif

puts [lsort -unique {c a b q a z q}]
# a b c q z

# nest list structure sorting
puts [lsort -integer -index 1 {{First 24} {Second 18} {Third 30}}]
# => {Second 18} {First 24} {Third 30}
