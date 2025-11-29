#!/usr/bin/env tclsh

# demonstrate double quoting
set msg1 "Eggs: \$2.18/dozen\nGasoline: \$1.49/gallon"
puts $msg1

# can span multiple lines...
set msg2 "Eggs: \$2.18/dozen
Gasoline: \$1.49/gallon"
puts $msg2

# don't do this... you can put double-quotes in the middle
# of words but it's not good practice
puts This"is"poor"usage"

# show how substititions all occur inside double quotes
set a 2.1
puts "a is $a; the square of a is [expr $a*$a]"

# how to use a double quote
set name a.out
puts "Couldn't open file \"$name\""

# quoting with braces - all special characters lose their
# meaning
puts {Eggs: $2.18/dozen
Gasoline: $1.49/gallon}

# now show msg1 above using braces...
puts {Eggs: \$2.18/dozen\nGasoline: \$1.49/gallon}
