let is_even x = x <> 0 && x mod 2 = 0;;
let win a b = match (a<1 || a>5, b<1 || b>5, is_even(a+b)) with 
    (true, true, _) -> 0 | 
    (false, true, _) -> 1 | 
    (false, false, true) -> 1 | 
    _ -> -1 ;;