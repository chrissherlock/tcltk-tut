#!/usr/bin/env tclsh

puts [string is digit 1234]
# => 1

puts [string is digit "A man, a plan, a canal. Panama."]
# => 0

puts [string is control ""]
# => 1

puts [string is control -strict ""]
# => 0

set idx 3
puts [string is digit -failindex idx "123c5"]
# => 0

puts [string is alnum "!"]
# => 0

puts [string is alpha "0"]
# => 0

puts [string is ascii "é"]
# => 0

puts [string is boolean "0"]
# => 1

puts [string is boolean "1"]
# => 1

puts [string is boolean "false"]
# => 1

puts [string is boolean "true"]
# => 1

puts [string is boolean "no"]
# => 1

puts [string is boolean "yes"]
# => 1

proc get_unicode_digit_strings {digit_blocks} {
    # Initialize an empty list to hold the resulting strings (one string per script block)
    set result_strings {}

    proc get_unicode_digits {digit_blocks} {
        # Initialize an empty list to hold all the extracted digit characters
        set all_digits {}

        # Iterate through the block list (name and starting hex code)
        foreach {name start_hex} $digit_blocks {
            # Iterate from index 0 to 9 to get the 10 sequential digits
            for {set i 0} {$i < 10} {incr i} {
                # Calculate the code point for the current digit
                set code_point [expr {$start_hex + $i}]

                # Convert the integer code point to a Unicode character string (%c)
                set char [format %c $code_point]

                # Append the character to the results list
                lappend all_digits $char
            }
        }

        # Return the complete list of characters
        return $all_digits
    }

    # Return the list of strings
    return $result_strings
}

set unicode_blocks {
    "Basic Latin"       0x30
    "Devanagari"        0x966
    "Bengali"           0x9E6
    "Gurmukhi"          0xA66
    "Gujarati"          0xAE6
    "Oriya"             0xB66
    "Tamil"             0xBE7
    "Telugu"            0xC66
    "Kannada"           0xCE6
    "Malayalam"         0xD66
    "Thai"              0xE50
    "Lao"               0xED0
    "Tibetan"           0x0F20
    "Myanmar"           0x1040
    "Ethiopic"          0x1369
    "Khmer"             0x17E0
    "Mongolian"         0x1810
    "Limbu"             0x1946
    "New Tai Lue"       0x19D0
    "Tai Tham"          0x1A80
    "Balinese"          0x1B50
    "Javanese"          0x1BFA
    "Meetei Mayek"      0xABF0
    "Fullwidth"         0xFF10
}

puts [string is digit [set unicode_digits [get_unicode_digit_strings $unicode_blocks]]]
# => 1
