type season = Spring | Summer | Autumn | Winter;;
let squirrel_play t s = 
  match (t>=15 && t <= 30, s) with 
  (true, _) -> true | 
  (false, Summer) -> 
    if t <= 35 && t > 30 then true 
    else false | 
  _ -> false;;