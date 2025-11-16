#!/usr/bin/env tclsh

puts [string replace "San Diego, California" 4 8 "Franscico"]
# => San Francisco, California

puts [string replace "parsley, sage, rosemary, and thyme" 0 8]
# => sage, rosemary, and thyme

# map values within a dictionary to string sequences within text
set entities {
    & &amp;
    ' &apos;
    > &gt;
    < &lt;
   \" &quot;
}

puts [string map $entities {if (index > 0 && nbAtts == 0)}]
# => if (index &gt; 0 &amp;&amp; nbAtts == 0)

puts [string map -nocase \
    { RESOURCE "Ms. Ripley" CORPORATION "Weland-Yutani" } \
    "Dear ResouRce, welcome to your first day at corporation"]
# => Dear Ms. Ripley, welcome to your first day at Weyland-Yutani
