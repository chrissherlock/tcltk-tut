#!/usr/bin/env tclsh

# create
puts [dict create a b  c {d e}  {f g} h  a "b repeated"]
# => a {b repeated} c {d e} {f g} hc

puts [set example [dict create firstname Ann initial E \
        surname Huan]]
# => firstname Ann initial E surname Huan

# read
puts [dict get $example surname]
# => Huan

# update
puts [dict replace $example initial Y]
# => firstname Ann initial Y surname Huan

puts [dict replace $example title Mrs surname Boddie]
# => firstname Ann initial E surname Boddie title Mrs

# delete
puts [dict remove $example initial]
# => firstname Ann surname Huan title Mrs

# merge
set colors1 {foreground white background black}
set colors2 {highlight red foreground green}
puts [dict merge $colors1 $colors2]
# => foreground green background black highlight red

puts [set example [dict create firstname Ann initial E \
        surname Huan title Miss]]
# => firstname Ann initial E surname Huan title Miss

puts [dict set example title Mrs]
# => firstname Ann initial E surname Huan title Mrs

puts [dict get $example title]
# => Mrs

puts [dict set example surname Boddie]
# => firstname Ann initial E surname Boddie title Mrs

puts [dict get $example surname]
# => Boddie

puts [dict get $example notexist]
# => error: key "notexist" not known in dictionary
