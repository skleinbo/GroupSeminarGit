push!(LOAD_PATH, ".")

import ModuleA: f,g

function main()
	X = rand(16,16)
	f(X) |> println
	g(X) |> println
end

main()
