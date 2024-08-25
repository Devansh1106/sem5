function nr(guess::Float64)
    xn = guess
    iter = 0
    err = 1.0       # dummy value
   while (abs(err) > 10e-8)
    res = func(xn)/deriv_func(xn)
    xnp1 = xn - res
    err = abs(xnp1 - xn)/xn
    xn = xnp1
    iter = iter + 1
   end
   return xn, iter
end

function func(x::Float64)
    return x^3 + x^2 + 2     # root is -1.6956253051757812
end

function deriv_func(x::Float64)
    return 3*(x^2) + 2*x    
end

root, iter = nr(-1.0)       # one root is in interval [-2.0, 0.0]
# println(err)
println("The root of the given equation using Newton-Raphson method is: $root. Iterations: $iter")