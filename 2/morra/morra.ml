type winner = Player | Computer | Tie;;
let win (hp, gp) = 
  let hc = Random.int(6) in 
    let gc = hc + Random.int(6) in 
      match (gp = hc + hp, gc = hc + hp) with 
        (true, false) -> ((hc, gc), Player) | 
        (false, true) -> ((hc, gc), Computer) | 
        _ -> ((hc, gc), Tie);;