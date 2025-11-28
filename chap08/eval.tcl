#!/usr/bin/env tclsh

set reset {
    set a 0
    set b 0
    set c 0
}

incr a
incr b
incr c

puts "a: $a, b: $b, c, $c"

eval $reset

puts "a: $a, b: $b, c, $c"
