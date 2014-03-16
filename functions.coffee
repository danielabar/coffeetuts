# Start with function name, in this case 'greet'
# function keyword NOT required
# Arrow syntax means: pass these parameters to body of function
# Note no curly braces required to denote block of function
# But function body MUST BE INDENTED
greet = (name) ->
  console.log "Hello #{name}!"

# Above function has only one line in body, therefore
# could be written as single line
greetSingleLine = (name) -> console.log "Hello #{name}"

# Call the function
# Notice that in this case, NO parantheses required when calling function
greet "CoffeeScript Learners" # Hello CoffeeScript Learners!

# Cases where parantheses ARE required when calling functions

# 1. Not passing any parameters to function
noArgFunc = () -> console.log "Hi there stranger"
noArgFunc()

# 2. Function returns object, then want to retrieve properties
#    Even if are passing params
#    Also notice in this example, last line of function is returned
#    i.e. no explicit return keyword used
funcReturnsObj = (myparam) -> name: "Sue", job: "Developer"
console.log funcReturnsObj("something").name # Sue

# 3. Want to do something else after function call, on same line,
#    To ensure that '+ 10' doesn't mistakenly get added to parameter
greet("Joe") + 10 # Compiled: greet("Joe") + 10
greet "Joe" + 10  # Compiled: greet("Joe" + 10)

# Returning values (similar to Ruby)
# Whatever result of last line of function is, that's what gets returned
greet2 = (name) ->
  name = name || "friend"

console.log greet2() # friend

# Return is only implicit when its the last line in a function
# Multiple return points in a function require explicit return statement

# Setting optional parameters
greetOption = (name = "friend") ->
  console.log "greetOption: Hello #{name}"

greetOption() # greetOption: Hello friend
greetOption("Larry") # greetOption: Hello Larry

# Splats: Like varargs in Java
test = (x, y, z...) ->
  console.log x
  console.log y
  console.log z

test "one", "two"
###
one
two
[]
###
console.log "================"

test "one", "two", "three"
###
one
two
[ 'three' ]
###
console.log "================"

test "one", "two", "three", "four"
###
one
two
[ 'three', 'four' ]
###
console.log "================"

# Unlike Java, splats don't have to be last parameter
test2 = (x..., y, z) ->
  console.log x
  console.log y
  console.log z

test2 "one", "two", "three", "four", "five"
###
[ 'one', 'two', 'three' ]
four
five
###
console.log "================"

test2 "one", "two"
###
[]
one
two
###