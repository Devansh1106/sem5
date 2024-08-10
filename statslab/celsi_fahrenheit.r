celsius = seq(-20, 100, by = 10)    # seq is for sequence creation
# print(celsius)
fahrenheit = (9/5) * celsius + 32
conversion_table = data.frame(
    Celsius = celsius,      # Celsius, Fahrenheit: column name
    Fahrenheit = fahrenheit
)

# Print the conversion table
print(conversion_table)