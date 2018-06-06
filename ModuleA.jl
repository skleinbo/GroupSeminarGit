module ModuleA

export specnorm, tr, frob

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

function frob(X::AbstractMatrix)
 mapreduce(+, X) do x
  conj(x)*x
 end |> sqrt
end

end
