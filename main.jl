push!(LOAD_PATH, ".")

import ModuleA: specnorm,tr,frob

function main()
	X = rand(16,16)
	specnorm(X) |> println
	tr(X) |> println
	frob(X) |> println
end

main()
