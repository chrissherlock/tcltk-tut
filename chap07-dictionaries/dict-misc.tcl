#!/usr/bin/env tclsh

set example {firstname Ann surname Huan title Miss}
puts [dict append example firstname ie]
# => firstname Annie surname Huan title Miss

set shopping {fruit apple veg carrot}
puts [dict lappend shopping fruit orange]
# => fruit {apple orange} veg carrot

puts [dict lappend shopping fruit banana]
# => fruit {apple orange banana} veg carrot

puts [dict lappend shopping veg cabbage beans]
# => fruit {apple orange banana} veg {carrot cabbage beans}

proc computeHistogram {text} {
    set frequencies {}

    foreach word [split $text] {
        # Ignore empty words caused by double spaces
        if {$word eq ""} continue

        dict incr frequencies [string tolower $word]
    }

    return $frequencies
}

dict for {key value} [computeHistogram "this day is a happy happy day"] {
    puts "Key: $key, Value: $value"
}
