( in-addr out-addr - out-addr )
: copy-word
  repeat
    dup rot dup c@
    ( out out in c )
    dup if
      rot
      ( out in c out)
      c! 1 + swap
      ( in out )
      1 +  0
    else 1
    then
  until
  swap drop drop drop
;
  
      
      

: concat
  over over >r >r
  ( in1 in2 )
  over over
  ( in1 in2 in1 in2 )
  count swap count 1 + + heap-alloc dup >r
  ( in1 in2 out || out )

  swap >r copy-word
  ( new-out || out in2 )
 
  r> swap copy-word
  ( new-new-out )
  0 swap c!
  ( )
  r>
  r> r> heap-free heap-free
;

