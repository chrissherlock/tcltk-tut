#!/usr/bin/env tclsh

proc whoAmI {} {
    return "global command"
}

namespace eval ns {
    proc whoAmI {} {
        return "namespace command"
    }
}

puts [whoAmI]
# => global command

puts [ns::whoAmI]
# => namespace command

puts [
    namespace eval ns {
        whoAmI
    }
]
# => namespace command
