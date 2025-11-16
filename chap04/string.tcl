#!/usr/bin/env tclsh

set x "New York"

if {$x eq "New York"} {
    puts "New York, New York"
}

set x "New Jersey"

if {$x ne "New York"} {
    puts "Not New York"
}
