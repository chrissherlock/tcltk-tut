#!/usr/bin/env tclsh

# size of dict
puts [dict size {firstname Ann surname Huan title Miss}]
# => 3

puts [dict size {}]
# => 0

set example {}
dict set example a alpha
dict set example b bravo
dict set example c charlie
dict set example d delta
dict set example e epsilon

puts [dict size $example]
# => 5

# does something exist
set example {title Miss firstname Ann surname Huan}
dict exists $example firstname
# => 1

dict exists $example initial
# => 0

# keys
dict keys $example
# => title firstname surname

# filtering by a string match-style pattern
dict keys $example {*name}
# => firstname surname

# values
dict values $example
# => Miss Ann Huan

dict values $example *n*
# => Ann Huan

# how to loop - pretty print using the format command
dict for {key value} $example {
    puts [format "%s: %s" $key $value]
}

proc sortDict {dictionary} {
    set sorted {}

    foreach key [lsort [dict keys $dictionary]] {
        dict set sorted $key {}
    }

    return [dict merge $sorted $dictionary]
}

puts [sortDict $example]
# => firstname Ann surname Huan title Miss
