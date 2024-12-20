using LinearAlgebra
x = [1 2 3; 3 4 5; 5 6 7]
y = [1 2 3; 3 4 5]
# display(x+y)
z = eigvals(x)
display(z)
println(sum(x[1,:]))
