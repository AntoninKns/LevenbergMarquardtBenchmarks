# Get the solver and partition number and launch the distributed benchmark
function main(args)
  solvers = Dict(:LM_facto => (model, io) -> levenberg_marquardt_facto(model, logging = io),
                )

  partition_number = parse(Int64, args[1])

  lm_distributed_benchmark(solvers, partition_number)
end

main(ARGS)
