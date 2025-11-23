#!/usr/bin/env tclsh

set example {firstname Joe surname Schmoe title Mr}
puts [dict get $example surname]
# => Schmoe

# better layout
set prefers {
    Joe         {the easy life}
    Jeremy      {fast cars}
    {Uncle Sam} {motherhood and apple pie}
}
puts [dict get $prefers Joe]
# => the easy life

set employees {
    0001 {
        firstname   Joe
        surname     Schmoe
        title       Mr
    }
    1234 {
        firstname   Ann
        initial     E
        surname     Huan
        title       Miss
    }
}

puts [dict get [dict get $employees 1234] firstname]
# => Ann

puts [set AnnsRecords [dict get $employees 1234]]
# => firstname Ann initial E surname Huan title Miss
