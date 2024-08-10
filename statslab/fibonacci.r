a = 1
b = 1
# n = readline(prompt= "Enter the number of terms: ")
# n = as.integer(n)
n = 10
print(a)
print(b)
for (i in 1:(n-2)){
    c = a+b
    a = b
    b = c
    print(c)
}