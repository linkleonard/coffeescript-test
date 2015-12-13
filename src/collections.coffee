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
# Does not run in node.
# $('.account').attr class: 'active'

# Equivalent to log(object['class'])
# Does not run in node.
# log object.class


# Iterating over a collection is written similar to a list comprehension.

# Eat lunch
# for food in ...:
#    eat(food)
eat = (dish) ->
    console.log dish, "was yummy!"
    null

eat food for food in ['toast', 'cheese', 'wine']

# Fine five course dining
courses = ['greens', 'caviar', 'truffles', 'roast', 'cake']

# Equivalent to pseudocode:
# for (dish, i) in courses:
#   menu(i + 1, dish)

menu = (num, dish) ->
    console.log "#{num}: #{dish}"
    null

menu i + 1, dish for dish, i in courses

# Iteration with conditional
# Health conscious meal
foods = ['broccoli', 'spinach', 'chocolate']

# Pseudocode:
# for food in foods:
#   if food isnt chocolate:
#     eat(food)
eat food for food in foods when food isnt 'chocolate'


# Writing list comprehensions

countdown = (num for num in [10..1])

# Remember to explicitly return null if the function is only supposed to
# perform an action without returning anything.
loudCountdown = ->
    console.log num for num in [10..1]
    null

# Low level loops
# Two ways to write while loops
if this.studyingEconomics
    buy() while supply > demand
    sell until supply > demand

# Building list with while loop.

# Note that indentation leading up to the opening quote is stripped from
# following lines.
num = 6
lyrics = while num -= 1
    "#{num} little monkeys, jumping on the bed.
      One fell out and bumped his head."

console.log lyrics


# Anonymous function inside a loop
fs = require 'fs'
files = ['lib/collections.js', 'lib/functions.js']
for filename in files
    do (filename) ->
        fs.readFile filename, (err, contents) ->
            console.log filename, contents.length


#
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# a..b is equivalent to [a, b]
start = numbers[0..2]
middle = numbers[3...-2]
end = numbers[-2..]
copy = numbers[..]


numbers[3..5] = [5..3]
console.log numbers
