type vote = StrongReject | WeakReject | WeakAccept | StrongAccept;;
let decide_exam v1 v2 v3 = match (v1 <> StrongReject, v2 <> StrongReject, v3 <> StrongReject, v1 <> WeakReject, v2 <> WeakReject, v3 <> WeakReject) with
                                    (true, true, true, true, true, _) -> true | 
                                    (true, true, true, _, true, true) -> true | 
                                    (true, true, true, true, _, true) -> true | 
                                    _ -> false;; 