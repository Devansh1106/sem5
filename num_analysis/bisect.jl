function bisection(a::Float64, b::Float64)
   if func(a)*func(b) > 0
    error("Invalid! interval.")
   elseif abs(func(a)*func(b) )<= 10e-20
    if abs(func(a)) <= 10e-20
        error("$a is a root.")
    elseif abs(func(b)) <= 10e-20
        error("$b is a root.")
    end
   else
    c = (a+b)/2
    iter = 0
    while abs(func(c)) >= 10e-3
        c = (a+b)/2
        if func(a)*func(c) < 0.0
            b = c
        elseif func(c)*func(b) < 0.0
            a = c
        end
        iter = iter + 1
    end
   end
   return c, iter
end

function func(x::Float64)
    return 2*x^6 - 5*x^4 + 2
    # return sin(x) + x^2 - 1
#    return x^3 + x^2 + 2     # root is -1.6956253051757812; interval: [-2,0]
end
root, iter = bisection(0.0, 1.0)
println("The root of the given equation using bisection method is: $root. Iterations: $iter")
# err = abs(-1.69562 - root)/1.69562
# println(err)