# Defining a function
square = (x) -> x * x

# Can also be written as...
# cube = (x) -> square(x) * x
cube = (x) -> (square x) * x

# Defining functions with default variables
fill = (container, liquid = "coffee") ->
    "Filling the #{container} with #{liquid}"

# Variable arguments
gold = silver = rest = "unknown"

awardMedals = (first, second, others...) ->
    gold = first
    silver = second
    rest = others

contenders = [
  "Michael Phelps"
  "Liu Xiang"
  "Yao Ming"
  "Allyson Felix"
  "Shawn Johnson"
  "Roman Sebrle"
  "Guo Jingjing"
  "Tyson Gay"
  "Asafa Powell"
  "Usain Bolt"
]

# Call awardMedals() with condenders unpacked as its arguments
awardMedals contenders...

alert "Gold:", gold
alert "Silver:", silver
alert "The field:", rest


grade = (student) ->
    if student.excellentWork
        'A+'
    else if student.okayStuff
        if student.triedHard then 'B' else 'B-'
    else
        'C'

eldest = if 24 > 21 then 'Liz' else 'Ike'
