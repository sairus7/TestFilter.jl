module TestFilter

using DSP

include("dspfilter.jl")

# Write your package code here.

function add_one(x)
    return x + 1
end

function add_two(x)
    return x + 2
end

export add_one, 
    DSPFilter, 
    init, 
    run_filter



end # module
