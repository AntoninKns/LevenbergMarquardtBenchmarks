#!/bin/bash

julia --project -E 'using Pkg; Pkg.instantiate(); Pkg.update(); Pkg.resolve()'
julia --project benchmark/DistributedScript.jl 15