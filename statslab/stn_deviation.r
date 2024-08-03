calc_deviation = function(data){
	mean = sum(data)/length(data)
	sq_diff = (mean - data)^2
	deviation = sqrt(sum(sq_diff)/length(data))
	return (deviation)
}
data = c(1,2,3,4,5)
deviation = calc_deviation(data)
print(deviation)
