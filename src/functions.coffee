# Defining a function
square = (x) -> x * x

# Can also be written as...
# cube = (x) -> square(x) * x
cube = (x) -> (square x) * x

# Defining functions with default variables
fill = (container, liquid = "coffee") ->
    "Filling the #{container} with #{liquid}"
