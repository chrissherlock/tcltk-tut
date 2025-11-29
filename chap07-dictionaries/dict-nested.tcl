#!/usr/bin/env tclsh

puts [set nestedDict {firstname Ann surname Huan}]
# => firstname Ann surname Huan

puts [dict set nestedDict address street {Ordinary Way}]
# => firstname Ann surname Huan address {street {Ordinary Way}}

puts [dict set nestedDict address city Springfield]
# => firstname Ann surname Huan address {street {Ordinary Way} city Springfield}

puts [dict get $nestedDict address street]
# => Ordinary Way

puts [dict unset nestedDict address street]
# => firstname Add surname Huan address {city Springfield}

set example {
    A {
        alphabet    {a alpha b bravo c chalie}
        animals     {cow calf sheep lamb pig ? goose ?}
    }
    C {
        comedians   {laurel&hardy morecambe&wise}
    }
}

puts "subdict: [dict get $example C comedians]"

set subdict [dict with example C {
    lappend comedians "steve martin"
}]

puts "subdict: $subdict"

# 1. Initial Dictionary
set config {
    server "localhost"
    port 8080
    timeout 60
}

# 2. Use dict with to access and modify values
dict with config {
    # Access and print values like regular variables
    puts "Current server: $server:$port"  ;# Output: Current server: localhost:8080

    # Modify the 'port' and 'timeout' variables
    set port 8443
    set timeout 120

    # You can also use other dict commands inside, but using the variables is easier
    # dict set config newKey newValue  <-- This would also work but is less clean
}

# 3. Check the dictionary after the block
puts $config
# Output: server localhost port 8443 timeout 120

set user_data {
    Alice {
        email "alice@example.com"
        status "Active"
        role "Admin"
    }
    Bob {
        email "bob@example.com"
        status "Inactive"
        role "User"
    }
}

# We pass the key Alice as the second argument to dict with. This tells
# the command to only expose the keys from the dictionary stored under
# the key Alice.

# 1. Use 'dict with' passing the key "Alice"
#    This makes 'email', 'status', and 'role' available as local variables
#    and ensures changes are written back to the 'Alice' sub-dictionary.
dict with user_data Alice {
    puts "Alice's current role is: $role"

    # Modify a key in the nested dictionary
    set status "Suspended"
    set role "Guest"

    # You can also add a new key to the nested dictionary
    set last_login "2025-11-25"
}

# 2. Check the updated dictionary
puts "--- After update ---"
puts [dict get $user_data Alice]
