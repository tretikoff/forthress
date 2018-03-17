: isPrimary

dup 2 < if 0 else
  dup 2 = if 1 else
    1 over dup  2 / 2
      ( n 1 n n/2 )
      for over r@ %
    
      ( n 1 n n/2  1|0)
       if else 
           over r@ / r@ %
           if else rot drop 0 rot rot
           then
       then 
      endfor
    drop drop drop 
  then 
then
swap drop 
;
