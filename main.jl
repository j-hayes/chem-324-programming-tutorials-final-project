using JuliaChem
using Plots
include("full_repl.jl")

function run_calculation(input_file)
    JuliaChem.initialize() 
    energy, properties = full_rhf(input_file)      
    JuliaChem.finalize()   
    
end
run_calculation("water.json")
random_plot = plot(rand(10,5))
savefig(random_plot, "randomplot")      