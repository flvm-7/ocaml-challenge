let is_posfrac a b = 
  if b <> 0 then 
    match (a>=0, b>0) with 
      (true, true) -> true | 
      (false, false) -> true | 
      _ -> false 
  else failwith("Not a fraction");;

let compare_posfrac (a,b) (c,d) = 
  if is_posfrac a b && is_posfrac c d then 
    match (a/b > c/d, a/b < c/d, (a mod c = 0 || c mod a = 0) && (b mod d = 0 || d mod b = 0)) with 
      (true, false, false) -> 1 | 
      (false, true, false) -> -1 | 
      (false, false, true) -> 0 | 
      _ -> 
        if a <> c then 
          if a mod b > c mod d then 1 
          else -1 
        else 
          if b < d then 1 
          else -1 
  else failwith("Not a positive fraction");;

let compare_frac (a,b) (c,d) = 
  match (is_posfrac a b, is_posfrac c d) with 
    (true, true) -> compare_posfrac (a,b) (c,d) | 
    (true, false) -> 1 | 
    (false, true) -> -1 | 
    _ -> compare_posfrac ((-a),(-b)) ((-c),(-d));;