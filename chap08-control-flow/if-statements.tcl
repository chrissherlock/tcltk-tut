#!/usr/bin/env tclsh

# The simplest form executes a script only if the condition is true.

set score 95

if {$score >= 90} {
    puts "Excellent! You earned an A."
}
# => Output: Excellent! You earned an A.

set temperature 15 ;# degrees Celsius

if {$temperature > 25} {
    puts "It's hot outside."
} else {
    puts "It's cool or mild."
}
# => Output: It's cool or mild.

# if-else statement
#
# This structure executes one script if the condition is true and a
# different script if it is false.

set grade 77

if {$grade >= 90} {
    puts "Grade: A"
} elseif {$grade >= 80} {
    puts "Grade: B"
} elseif {$grade >= 70} {
    puts "Grade: C"
} else {
    puts "Grade: Below C"
}
# => Output: Grade: C

# if-elseif-else statement (multi-conditional)
#
# This allows you to check multiple exclusive conditions sequentially.
# The scripts are executed for the first condition that evaluates to
# true, and then the whole structure finishes.

set day "Saturday"
set is_holiday 0 ;# 1 for true, 0 for false

if {($day eq "Saturday") || ($day eq "Sunday") || ($is_holiday)} {
    puts "Time to relax!"
} else {
    puts "It's a workday."
}
# => Output: Time to relax!

# if with Logical Operators
#
# You can use logical operators within the condition block to combine
# multiple checks:
#
#    && (AND): Both conditions must be true.
#    || (OR): At least one condition must be true.
#    ! (NOT): Inverts the condition.
#
# Example: Check for Weekend

set day "Saturday"
set is_holiday 0 ;# 1 for true, 0 for false

if {($day eq "Saturday") || ($day eq "Sunday") || ($is_holiday)} {
    puts "Time to relax!"
} else {
    puts "It's a workday."
}
# => Output: Time to relax!

# Using the string equal Operator

# While Tcl allows basic string comparison with operators like == and
# !=, it's often safer and clearer to use the string equal command,
# especially when comparing strings that might look like numbers.

set user_input "Yes"

if {[string equal -nocase $user_input "yes"]} {
    puts "Access granted."
} else {
    puts "Access denied."
}
# => Output: Access granted.
