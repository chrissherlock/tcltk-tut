#!/usr/bin/env tclsh

# format is the equivalent of sprintf
puts [format "The square root of 10 is %.3f" [expr sqrt(10)]]
# => The square root of 10 is 3.162

# generate the first ten powers of e in a table
puts "Number Exponential"
for {set i 1} {$i <= 10} {incr i} {
    puts [format "%4d %12.3f" $i [expr exp($i)]]
}

