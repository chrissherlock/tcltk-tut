#!/usr/bin/env tclsh

# --- Define the parts of the command as a list ---
# 1. The base command
set base_command "ls"

# 2. A list of flags (options)
# This variable holds multiple arguments we want to pass to 'ls'
set flags [list "-l" "-a"]

# 3. An additional argument (the target directory, in this case the current)
set target_dir "." 

# --- Execute the command with argument expansion ---
# The {*}$flags expands the list into two separate arguments: -l and -a.
set output [exec $base_command {*}$flags $target_dir]

# --- Display the Result ---
puts "--- Command Executed ---"
# The command run was effectively: ls -l -a .
puts "Command Output:"
puts $output

# Explanation:
# 
# Without Expansion (Incorrect): If you tried exec $base_command $flags $target_dir,
# Tcl would execute: ls {-l -a} /tmp The shell/program would see {-l -a} as a
# single, invalid argument (the literal string {-l -a}), causing the command
# to fail or produce an error.
#
# With Expansion (Correct): The {*}flags syntax correctly expands the list,
# making the exec command see: exec ls "-l" "-a" "/tmp" This results in the
# shell executing the command exactly as intended: ls -l -a /tmp.
