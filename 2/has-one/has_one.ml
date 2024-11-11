let rec has_one n = 
  if n < 0 then failwith "Negative Number" 
  else 
    if n mod 10 <> 1 then 
      if n >= 10 then has_one (n/10) 
      else false 
    else true;;