type card = Joker | Val of int;;
let win a b = match (a=Joker, b=Joker) with 
                        (_, true) -> false | 
                        (true, false) -> true | 
                        (false, false) -> if a > b then true else false;;