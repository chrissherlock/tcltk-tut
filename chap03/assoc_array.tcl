#!/usr/bin/env tclsh

# create an array called earnings, which creates element January
# within the array, and then assigns 87966
puts [set earnings(January) 87966]

# create an element February within the array, and then assigns 95400
puts [set earnings(February) 95400]

# returns the value of the January element
puts [set earnings(January)]

# populate month array
set yearTotal 0

# how to iterate through each month
foreach month {Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec} {
    set profit($month) 10
}

foreach month {Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec} {
    set yearTotal [expr $yearTotal+$profit($month)]
}

puts "Year total: $yearTotal"

# querying the elements of the array
set currency(France) euro
set "currency(Great Britain)" pound
set currency(Japan) yen

puts [array size currency]
puts [array names currency]
