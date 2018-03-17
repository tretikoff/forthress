: isPrimeAllot

dup 2 < if 0 else
  dup 2 = if 1 else
    1 over dup  2 / 2 
      for over r@ % 
        if else rot drop 0 rot rot 
        then 
      endfor
    drop drop drop 
  then
  1 cells allot dup rot rot !
  swap drop
then ;
