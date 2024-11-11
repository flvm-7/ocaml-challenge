type suit = S | H | D | C;;
type card = Card of int * suit;;
let rndCard () = 
  (Card (Random.int(13)+1, match (Random.int(4)) with 0 -> S | 1 -> H | 2 -> D | _ -> C));;
let rndHand () = (rndCard(),rndCard(),rndCard(),rndCard(),rndCard());;
let poker (Card (value_1, suite_1), Card (value_2, suite_2), Card (value_3, suite_3), Card (value_4, suite_4), Card (value_5, suite_5)) = 
  match (value_1 = value_2 && suite_1 <> suite_2,value_1 = value_3 && suite_1 <> suite_3,value_1 = value_4 && suite_1 <> suite_4,value_1 = value_5 && suite_1 <> suite_5,value_2 = value_3 && suite_2 <> suite_3,value_2 = value_4 && suite_2 <> suite_4,value_2 = value_5 && suite_2 <> suite_5,suite_3 <> suite_4 && suite_3 <> suite_5 && suite_4 <> suite_5) with 
    (true, true, true, _, _, _, _, _) -> true | 
    (true, true, _, true, _, _, _, _) -> true | 
    (true, _, true, true, _, _, _, _) -> true | 
    (_, true, true, true, _, _, _, _) -> true | 
    (_, _, _, _, true, true, true, true) -> true 
    | _ -> false;;