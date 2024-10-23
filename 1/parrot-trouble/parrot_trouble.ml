let parrot_trouble t h = 
  match ((h < 0 || h > 23), (h > 20 || h < 7), t) with
  (true, _, _) -> None |
  (false, true, true) -> Some true |
  _ -> Some false;;