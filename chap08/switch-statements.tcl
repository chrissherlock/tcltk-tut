#!/usr/bin/env tclsh

set status_code 403

switch $status_code {
    200 {
        puts "OK: Request succeeded."
        set action "Continue"
    }
    400 {
        puts "Bad Request: Client error."
        set action "Retry"
    }
    403 {
        puts "Forbidden: Access denied."
        set action "Alert"
    }
    404 {
        puts "Not Found: Resource unavailable."
        set action "Log"
    }
    default {
        puts "Unknown status code: $status_code"
        set action "Error"
    }
}
# => Forbidden: Access denied.

# unbraced style
set input_command "add"
set count 10

# Note: The expression ($input_command) is followed directly by the patterns and scripts.
switch $input_command \
    "add" {
        incr count
        puts "Count increased to: $count"
    } \
    "remove" {
        incr count -1
        puts "Count decreased to: $count"
    } \
    "reset" {
        set count 0
        puts "Count reset."
    } \
    default {
        puts "Unknown command: $input_command"
    }

# => Count increased to: 11

set t1 0
set t2 0
set t3 0

puts "t1 = $t1, t2 = $t2, t3 = $t3"

set x "4"
foreach i $x {
    switch -regexp -- $i {
        a           {incr t1}
        ^[0-9]+$    {incr t2}
        default     {incr t3}
    }
}

puts "t1 = $t1, t2 = $t2, t3 = $t3"

# if the script in a switch is -, switch uses the script
# for the next pattern instead
switch -- $x {
    4 -
    5 -
    a {incr t1}
    b {incr t2}
}

puts "t1 = $t1, t2 = $t2, t3 = $t3"
