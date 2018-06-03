module ModuleA

export specnorm

specnorm(X) = eigvals(X'*X) |> maximum |> sqrt 
function tr(X::AbstractMatrix)
 tr = zero(eltype(X))
 if size(X,1) == size(X,2)
  for i in 1:size(X,1)
   tr += X[i,i]
  end
  return tr
 else
  error("Not a square matrix.")
 end
end

end
