let dice p = 
  let res = Random.int(100) + 1 in 
    if res > p then Random.int(5) + 1 
    else 6;;