function secant(a::Float64, b::Float64)
    iter = 0
    xn0 = a
    xn = b
    err = 1.0
    while (abs(err) > 10e-8)
        res = func(xn)*(xn - xn0)/(func(xn) - func(xn0))
        xnp1 = xn - res
        err = abs(xnp1 - xn)/xn
        xn0 = xn
        xn = xnp1
        iter = iter + 1
    end
    return xn, iter
end
 
function func(x::Float64)
    return sin(x) + x^2 -1
end
root, iter = secant(0.0, 1.0)
println("The root of the given equation using secant method is: $root. Iterations: $iter")