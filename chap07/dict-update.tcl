#!/usr/bin/env tclsh

# Initial dictionary
set votes {apple 5 orange 3 banana 1}

puts $votes

# Use dict update to increment the 'apple' count
dict update votes apple current_count {
    incr current_count 1 ;# Increment the local variable 'current_count'
}

puts $votes

# two keys
set example {firstname Ann surname Huan title Miss}

puts $example

dict update example firstname v1 surname v2 {
    lassign [list $v1 $v2] v2 v1
}

puts $example
# => firstname Huan surname Ann title Miss

# square-a-value operation
proc squareValue {dictVar key} {
    upvar 1 $dictVar d
    dict update d $key v {
        set v [expr {$v ** 2}]
    }
}

set polyFactors {C 1 x 2 y 3}
squareValue polyFactors y
puts $polyFactors
# => C 1 x 2 y 9

puts $example

dict update example surname s notes n initial i {
    dict set example title Mrs
    unset s
    set n "have initial = [info exists i]"
    # print the current contents of the dictionary
    puts $example
}
# => firstname Ann surname Huan title Mrs

# Get the contents of the variable after the dict update command has
# completed; note it is different in several respects, but the value
# for 'title' is unchanged because that key was not listed at the
# start of the command
puts $example
# => firstname Ann title Mrs notes {have initial = 0}
