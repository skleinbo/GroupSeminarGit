push!(LOAD_PATH, ".")

import ModuleA: f

function main()
	X = rand(16,16)
	f(X) |> println
end

main()
