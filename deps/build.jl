append!(empty!(LOAD_PATH), Base.DEFAULT_LOAD_PATH)
using Pkg
exampledir = joinpath(@__DIR__, "..", "examples")
Pkg.activate(exampledir)
Pkg.instantiate()
include(joinpath(exampledir, "generate.jl"))
