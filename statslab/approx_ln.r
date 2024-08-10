n = c(2, 4, 8, 16, 32, 64, 128)
N = length(n)
x = 14.15
sum = rep(0, N)
error = rep(NA, N)
# n = c(10, 20, 40, 60, 80, 100)
for (j in 1:N){
    for (i in 1:n[j]){
        sum[j] = sum[j] + (1/i) * (x/(1+x))^i
    }
    print(sum[j])
    exact_val = 2.71828183
    error[j] = (abs(exact_val - sum[j]))/exact_val
    print(error[j])
}
plot(log(n), log(error), type='o')