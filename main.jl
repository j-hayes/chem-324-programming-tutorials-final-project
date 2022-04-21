using JuliaChem
include("full_repl.jl")

function run_calculation(input_file)
    JuliaChem.initialize() 
    energy, properties = full_rhf(input_file)      
    JuliaChem.finalize()   
    
end
run_calculation("water.json")
  