
let minmax3 : 'a -> 'a -> 'a -> 'a * 'a =
    fun a b c -> 
        match (a>b, a>c, b>c) with
        (false, false, false) -> (c, a) |
        (false, false, true) -> (b, a) |
        (false, true, true) -> (b, c) |
        (true, false, false) -> (c, b) |
        (true, true, false) -> (a, b) |
        (true, true, true) -> (a, c);;