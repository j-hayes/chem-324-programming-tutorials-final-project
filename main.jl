using JuliaChem
using Plots
include("full_repl.jl")

function run_calculation(input_file)
    JuliaChem.initialize() 
    energy, properties = full_rhf(input_file)      
    JuliaChem.finalize()   
    
end
run_calculation("water.json")


random_plot = plot(rand(10,1), title = "H2 Hartree Fock Discociation Curve", label = "Hartree Fock")
xlabel!("Internuclear Radius (a.u.)")
ylabel!("Energy (hartree)")
savefig(random_plot, "randomplot")      
