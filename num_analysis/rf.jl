function rf(a::Float64, b::Float64)
    if f(a)*f(b) > 0.0
        println("Invalid Interval!")
    else
        tol = 10e-8
        iter = 0
        xnp1 = 0.0
        while abs(f(xnp1)) >= tol
            xnp1 = a - f(a)*(b - a)/(f(b) - f(a))
            if f(a)*f(xnp1) < 0
                b = xnp1
            elseif f(b)*f(xnp1) < 0
                a = xnp1
            end
            iter = iter + 1
        end
    end
    return xnp1, iter
end

function f(x::Float64)
    return sin(x) + x^2 -1
end

root, iter = rf(1.0, 0.0)
println("Root is: $root in iterations: $iter")