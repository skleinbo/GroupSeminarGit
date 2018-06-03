module ModuleA

export f

f(X) = eigvals(X'*X) |> maximum |> sqrt 

end
