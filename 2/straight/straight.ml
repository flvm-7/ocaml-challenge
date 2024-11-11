type suit = S | H | D | C;;
type card = Card of int * suit;;
let straight ((Card (value_1, _)), (Card (value_2, _)), (Card (value_3, _)), (Card (value_4, _)), (Card (value_5, _))) = 
  if (value_2 = value_1 + 1) && (value_3 = value_2 + 1) && (value_4 = value_3 + 1) && (value_5 = value_4 + 1) then true 
  else false;;