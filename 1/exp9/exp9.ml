let square : int -> int = fun x -> x*x;;
let exp9 : int -> int = fun x -> x * (square x |> square |>square);;