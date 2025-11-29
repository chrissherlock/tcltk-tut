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

# preferred solution is to use the {*} syntax for argument expansion
set vars {a b c}
unset {*}$vars

set a 1
set b 1
set c 1

# alternate version of the above
eval unset $vars
