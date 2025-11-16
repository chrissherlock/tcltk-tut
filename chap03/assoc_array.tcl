#!/usr/bin/env tclsh

# create an array called earnings, which creates element January
# within the array, and then assigns 87966
puts [set earnings(January) 87966]

# create an element February within the array, and then assigns 95400
puts [set earnings(Feburary) 95400]

# returns the value of the January element
puts [set earnings(January)]
