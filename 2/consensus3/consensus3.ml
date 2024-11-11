let consensus3 ((f0 : 'a -> 'b),(f1 : 'a -> 'b),(f2 : 'a -> 'b)) n = 
	try 
		match ((f0 n) = (f1 n), (f0 n) = (f2 n), (f1 n) = (f2 n)) with 
			(true, _, _) -> Some(f0 n) | 
			(_, true, _) -> Some(f0 n) | 
			(_, _, true) -> Some(f1 n) | 
			_ -> None 
	with _ -> failwith("Undefined");;