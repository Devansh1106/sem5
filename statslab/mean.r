data = c(1,2,3,4,5)
mean_value = function(data){
	m = sum(data) / length(data)
	return(m)
}
a = mean_value(data)
print(a)

