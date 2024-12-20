# Code for forward euler method
using Plots


f(x) = -2 * x
@. exact(x) = exp(-2*x)


x0 = 0
x1 = 1
h = 0.1
n = (x1 - x0)/h
x = [j for j in range(x0, x1; step = h)]
y = zeros(Int(n+1))
y[1] = 1      # initial condition
function solver(h::Float64)
    for i in 1:Int(n)
        y[i+1] = y[i] + h*f(y[i])
    end
    error = sum(abs.(exact(x) - y))/n
    print("Error is $(error)")
end
solver(h)
plot(x, [y, exact(x)], labels=["Num sol" "exact sol"])