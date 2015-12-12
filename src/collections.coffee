# Javascript-like definition
song = ["do", "re", "mi", "fa", "so"]
singers = {Jagger: "Rock", Elvis: "Roll"}

# Trailing comma in arrays are optional.
# The following list has 9 elements.
bitlist = [
    1, 0, 1
    0, 0, 1
    1, 1, 0
]

# YAML-like syntax for object creation
kids =
    brother:
        name: "Max"
        age: 11
    sister:
        name: "Ida"
        age: 9

# JS keywords as properties are automatically wrapped with quotes
# Equivalent to $('.account').attr({'class': 'active'})
$('.account').attr class: 'active'

# Equivalent to log(object['class'])
log object.class
