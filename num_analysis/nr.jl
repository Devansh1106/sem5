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
    # return x - exp(-x)
    # return x^4 -x -10
    return sin(x) + x^2 - 1    # roots are: 0.6367326508052825, -1.4096240040025962
    # return x^3 + x^2 + 2     # root is -1.6956253051757812
end

function deriv_func(x::Float64)
    # return 1 + exp(-x)
    # return 4*(x^3) - 1
    return cos(x) + 2*x
    # return 3*(x^2) + 2*x    
end

root, iter = nr(0.5)       # one root is in interval [-2.0, 0.0]
# println(err)
println("The root of the given equation using Newton-Raphson method is: $root. Iterations: $iter")