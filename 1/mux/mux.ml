let mux2 : bool -> bool -> bool -> bool = 
    fun s0 a b -> 
        if s0 then a else b;;
let mux4 : bool -> bool -> bool -> bool -> bool -> bool -> bool = 
    fun s0 s1 a0 a1 a2 a3 -> 
        if s0 then mux2 s1 a3 a2 
        else mux2 s1 a1 a0;;