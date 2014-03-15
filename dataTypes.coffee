# Declaring a variable - do not use var keyword

# Can use single quoted or double quoted strings
nameDoubleQuote = "value"
nameSingleQuote = 'other value'

# When double quotes are used, can interpolate variables inside of strings
name = "Jeremy"
greeting = "Hello, #{name}!"
console.log greeting # Hello, Jeremy!

# Strings can be multiline - in this example, new lines are removed
multi = "some content
some more here
and one more line here"
console.log multi # some content some more here and one more line here

# Multiline string with newlines preserved: heredoc
#   Can be used with both single and double quoted strings
#   Start and end with 3 quotes
#   heredoc can be combined with string interpolation
heredocExample = """
this is line 1
this is line 2
and this is a greeting between empty lines

  #{greeting}


"""
console.log heredocExample

# Whole number
wholeNumber = 123

# Decimal number
decimalNumber = 123.456

# Booleans - can use true/false OR yes/no OR on/off
trueBool = true
falseBool = false
yesBool = yes
noBool = no
onBool = on
offBool = off

# Arrays are the same as in JavaScript, however, CoffeeScript also has Range

# Inclusive range: use two dots between numbers
inclusiveRange = [0..10]
console.log inclusiveRange # [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

# Exclusive range: use three dots between numbers
#   Will end one digit before final number
exclusiveRange = [0...10]
console.log exclusiveRange # [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]

reverseRange = [20...10]
console.log reverseRange # [ 20, 19, 18, 17, 16, 15, 14, 13, 12, 11 ]

# Objects - leave off curly braces because they're implied
obj = name: "Jeremy", job: "Programmer"
console.log obj # { name: 'Jeremy', job: 'Programmer' }

# Define an object with properties on multiple lines, then commas not required
secondObj =
  name: "Sue"
  job: "UNIX admin"

# Destructured Assignment - Object
myProp1 = "foo"
myProp2 = "bar"
myObj = {myProp1, myProp2}
console.log myObj # { myProp1: 'foo', myProp2: 'bar' }

# Can create object with combination of destructured and regular assignment
comboObj = {myProp1, favColor: "purple"}
console.log comboObj # { myProp1: 'foo', favColor: 'purple' }

# Can use destructured assignment with nested objects
nestedObj = {myProp1, favColor: "pink", other : {myProp1}}
console.log nestedObj # { myProp1: 'foo', favColor: 'pink', other: { myProp1: 'foo' } }

# White space IS IMPORTANT in CoffeeScript!
#  Generally, itt takes the place of curly braces in JavaScript

# Destructured Assignment - Array
[one, two, three] = ["1", "2", "3"]
# coffee generates:
# _ref = ["1", "2", "3"], one = _ref[0], two = _ref[1], three = _ref[2];