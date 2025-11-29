#!/usr/bin/env tclsh

proc increment {varName} {
    # 1. 'upvar 1 $varName counterAlias' creates a local variable
    #    named 'counterAlias' that is linked to the variable
    #    whose name is stored in '$varName' in the calling scope (level 1).
    upvar 1 $varName counterAlias

    puts "Inside Proc: The linked variable is currently $counterAlias"

    # 2. Any operation on 'counterAlias' directly modifies the original
    #    variable in the caller's scope.
    incr counterAlias 5

    puts "Inside Proc: The linked variable is now $counterAlias"
}

# Variable defined in the caller's scope
set myCount 10
puts "Caller's Scope (Before Call): myCount = $myCount"

# Call the procedure, passing the name of the variable
increment myCount

puts "Caller's Scope (After Call): myCount = $myCount"
