let guess5 n =  if n < 1 || n > 5 then failwith("Out of range parameter") 
                else let r = Random.int(5)+1 in if r = n then (true, r) else (false, r);;