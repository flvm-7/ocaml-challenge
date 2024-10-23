let best_offer : int option -> int option -> int option -> int option = 
    fun a b c -> match (a, b, c) with 
    (None, None, None) -> None | 
    (Some(a), None, None) -> Some(a) | 
    (None, Some(b), None) -> Some(b) | 
    (None, None, Some(c)) -> Some(c) | 
    (Some(a), Some(b), None) -> if a > b then Some(a) else Some(b) | 
    (Some(a), None, Some(c)) -> if a > c then Some(a) else Some(c) | 
    (None, Some(b), Some(c)) -> if b > c then Some(b) else Some(c) | 
    (Some(a), Some(b), Some(c)) -> if a > b then if a > c then Some(a) else Some(c) else if b > c then Some(b) else Some(c) ;;