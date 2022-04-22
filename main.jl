using JuliaChem
using Plots
include("hartree_fock_runner.jl")

function run_calculation(distance)
    start_calculations()
    
    energy = run_h2_hartree_fock(distance)     
    println(energy)
    energy2 = run_h2_hartree_fock(distance*2)      
    println(energy2)
    
    start_calculations()  
    
end
run_calculation(.9)


random_plot = plot(rand(10,1), title = "H2 Hartree Fock Discociation Curve", label = "Hartree Fock")
xlabel!("Internuclear Radius (a.u.)")
ylabel!("Energy (hartree)")
savefig(random_plot, "randomplot")      
