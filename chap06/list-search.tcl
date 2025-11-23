#!/usr/bin/env tclsh

set x {John Anne Mary Jim}
puts [lsearch $x Mary]
# => 2

puts [lsearch $x Phil]
# => -1

# there are -exact, -glob or -regexp switches
puts [lsearch -glob $x A*]
# => 1

puts [set states {California Hawaii Iowa Maine Vermont}]
# => California Hawaii Iowa Maine Vermont
puts [lsearch -all $states *a]
# => 0 2

# inline returns element values rather than indices
puts [lsearch -all -inline $states *ai*]
# => Hawaii Maine
