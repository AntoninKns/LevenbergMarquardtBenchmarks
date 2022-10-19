using LevenbergMarquardtBenchmarks, LevenbergMarquardt

# Get the solver and partition number and launch the distributed benchmark
function main(args)
  solvers = Dict(:LM_fast => (model, io) -> levenberg_marquardt(model, logging = io, which=:DEFAULT, max_eval=200, in_itmax=100),
                )

  partition_number = parse(Int64, args[1])

  lm_distributed_benchmark(solvers, partition_number)
end

main(ARGS)
