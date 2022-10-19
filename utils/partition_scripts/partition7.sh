#!/bin/bash

julia --project -E 'using Pkg; Pkg.instantiate(); Pkg.update(); Pkg.resolve()'
julia --project utils/DistributedScript.jl 7