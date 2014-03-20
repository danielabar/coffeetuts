arr = ["Nettuts+", "Aeututs+", "Phototuts+", "Psdtuts+", "Cgtuts+","Mobiletuts+"]

obj =
  name: "Nettuts+"
  topic: "Web Development"
  editor: "Jeffrey Way"

# For Loop: has many different forms

# For loop over array: use 'in' keyword
for siteName in arr
  console.log siteName
console.log "==========="

# For loop over array with access to loop index
for siteName, i in arr
  console.log "#{i}. #{siteName}"
console.log "==========="

# For loop is also designed to act like a select or filter
#   that you would find in a functional library like underscore

# Use 'when' keyword to choose which items of array to print out
for siteName, j in arr when siteName.indexOf("P") is 0
  console.log "#{j}. #{siteName}"
console.log "==========="

# Print out every second item in for loop: use 'by' keyword
for siteName, k in arr by 2
  console.log "#{k}. #{siteName}"
console.log "==========="

# Comprehension: Modifier form of for loops (recall modifier form of if statement)

console.log siteName for siteName in arr
console.log "==========="

# Recall that every statement in CoffeeScript, including for loops, is also an expression
# This means the for loop itself returns a value

console.log (siteName for siteName in arr)
console.log "==========="

# In above example, for statement returns array
# When parentheses are placed around a comprehension,
#   the values to left of for keyword are collected into a single array
#   and that array is returned as result of for statement
# This makes it easy to use a comprehension as a map function

console.log (siteName.length for siteName in arr)
console.log "==========="
# output: [ 8, 8, 10, 8, 7, 11 ]
# length of each item in arr

# For loop over Objects: use 'of' keyword

for key, value of obj
  console.log "#{key}: #{value}"
console.log "==========="

# Can use when in combination with for loop over objects
for key, value of obj when key isnt "name"
  console.log "#{key}: #{value}"
console.log "==========="

# Using 'own' keyword in combination with for loop over objects
#   Replaces having to check if obj.hasOwnProperty...
for own key, value of obj
  console.log "#{key}: #{value}"
console.log "==========="

# There's an easier way to create classes in CoffeeScript, will be covered in a separate topic
Site = (name) ->
  this.name = name

Site.prototype.topic = "Web Development"

obj2 = new Site "Nettuts+"

###
At this point, obj2 has 2 properties:
  1. name, which it received from Site constructor
  2. topic, which it inherited from Site prototype
###
for key, value of obj2
  console.log "#{key}: #{value}"
console.log "==========="

for own key, value of obj2
  console.log "#{key}: #{value}" # only prints out name property
console.log "==========="

# While loop
i = 0
while arr[i]
  console.log arr[i]
  i++
console.log "==========="

# Can be more intuitive to use 'while not'
# Need to use paranetheses to indicate scope of negation
i = 0
while not (i is arr.length)
  console.log arr[i]
  i++
console.log "==========="

# Can also use 'until' keyword
i = 0
until i is arr.length
  console.log arr[i]
  i++
console.log "==========="

# while and until loops can also be used as modifiers
console.log arr[i++] until i is arr.length

# Can also use 'loop' keyword: takes no conditions,
#   loops forever until it reaches break statement
i = 0
loop
  console.log arr[i++]
  break unless i < arr.length