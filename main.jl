push!(LOAD_PATH, ".")

import ModuleA: specnorm,tr

function main()
	X = rand(16,16)
	specnorm(X) |> println
	tr(X) |> println
end

main()
