let rec countzero (f : int -> int) a b = 
  if a > b then 0 
  else 
    if (f a) = 0 then 1 + countzero (f) (a+1) b 
    else countzero (f) (a+1) b;;