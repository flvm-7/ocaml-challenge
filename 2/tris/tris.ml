let tris (a,b,c,d) = 
  match (a = b && (b = d || b = c), a = c && c = d, b = c && c = d) with 
    (false, false, false) -> false 
    | _ -> true;;
let hand = (Random.int(10)+1,Random.int(10)+1,Random.int(10)+1,Random.int(10)+1);;
tris hand;;