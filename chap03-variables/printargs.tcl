#!/usr/bin/env tclsh

puts "The command name is \"argv0\""
puts "There were $argc arguments: $argv"

puts "Your home directory is $env(HOME)"
puts $tcl_platform(platform)
puts $tcl_platform(os)
puts $tcl_platform(machine)
