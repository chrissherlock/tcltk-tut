#!/usr/bin/env tclsh

# 1. Define a variable in the global scope
set counter 10
set counter2 10
puts "Global 'counter' (Before Proc Call): $counter"

# 2. Define the procedure
proc increment_counter {} {
    # 2. Use the 'global' command to link the local 'counter'
    #    to the global 'counter'.
    global counter

    # 3. Operations on 'counter' now affect the global variable.
    incr counter
    incr counter2
    puts "Inside Proc: 'counter' is $counter"
    puts "Inside Proc: 'counter2' is $counter2"
}

# 4. Call the procedure
increment_counter

# 5. Check the global variable again
puts "Global 'counter' and 'counter2' (After Proc Call): $counter $counter2"


