proc safeProc {a b} {
  if {[string is double -strict $a] && [string is double -strict $b]} {
    return [expr {$a + $b}]
  } else {
    return -code error "Inputs must be numbers"
  }
}
puts [safeProc 1 2] ;# 3
puts [safeProc a 2] ;# error message
puts [safeProc 1.5 2.5] ;# 4.0