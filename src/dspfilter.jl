
mutable struct DSPFilter
    a::Vector{Float64}
    b::Vector{Float64}
    si::Vector{Float64}
    need_restart::Bool

    function DSPFilter()
        new(Float64[], Float64[], Float64[], true)
    end
end

# MovingMean

# MovingDiff

# MovingSpectra

# 
function init(obj::DSPFilter, ftype::FilterType, coefs::FilterCoefficients)
    d = digitalfilter(ftype, coefs) |> DF2TFilter
    obj.a = coefa(d.coef)
    obj.b = coefb(d.coef)

    order = length(obj.a) - 1
    resize!(obj.si, order)
    fill!(obj.si, 0)

    obj
end

function run_filter(obj::DSPFilter, y::Vector, x::Vector)
    a, b, si = obj.a, obj.b, obj.si
    order = length(si)

    for i in 1:length(x)
        xi = x[i]
        yi = xi * b[1] + si[1]
        for j in 2:order
            si[j-1] = si[j] + b[j] * xi - a[j] * yi
        end
        si[order] = b[order+1] * xi - a[order+1] * yi
        y[i] = yi
    end
    return obj
end