#!/usr/bin/env tclsh

puts [string length "sample string"]
# => 13

puts [string toupper "watch out!"]
# => WATCH OUT!

puts [string tolower "15 Charing Cross Road"]
# => 15 charing cross road

puts [string trimleft "***Test string" "*"]
# => Test string

puts [string repeat "*" 20]
# => ********************

puts [string repeat "abc" 3]
# => abcabcabc
