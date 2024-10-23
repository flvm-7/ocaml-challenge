let movie_rating a b c = if (a>0 && a<6 && b>0 && b<6 && c>0 && c<6) then 
    match (a+b+c=15, a+b+c=14, a+b+c>10) with
    (true, _, _) -> "Masterpiece" |
    (_, true, _) -> "Highly Recommended" |
    (false, false, true) -> "Recommended" |
    (false, false, false) -> "Mixed Reviews"
else failwith("Out of range values");;