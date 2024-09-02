function fixed_point(a::Float64)
    iter = 0
    x1 = a
    err = 1.0
    while (abs(err) > 10e-8)
        x1 = func(x1)
        err = x1 - func(x1)
        iter = iter + 1
    end
    return x1, iter
end
 
function func(x::Float64)
    return sqrt(sin(x) + 1)
end
root, iter = fixed_point(1.0)
println("The root of the given equation using fixed point method is: $root. Iterations: $iter")