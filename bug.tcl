proc badproc {a b} { puts "[a] [b]" ; return [expr {$a + $b}] } 
puts [badproc 1 2] ;# 3
puts [badproc a 2] ;# error: can't use "a" as a number