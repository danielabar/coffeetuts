# Equality Operators

# is: ===
# isnt: !==
name = "Jeremy"
job = "Programmer"

if name is "Fred"
  console.log "name is Fred" # Nothing printed out

if name is "Jeremy"
  console.log "name is Jeremy" # Prints out: name is Jeremy

if name isnt "Fred"
  console.log "name isnt Fred" # Prints out: name isnt Fred

if name isnt "Jeremy"
  console.log "name isnt Jeremy" # Nothing printed out

# not: !
if not false
  console.log "not false" # Prints out: not false

# Boolean Operators

# and: &&
# or: ||

if name is "Jeremy" and job is "Programmer"
  console.log "Jeremy is a programmer" # Prints out: Jeremy is a programmer

# Existential Operatory (unique to CoffeeScript)

# Simple Case
if name?  # compiles to: if (name != null)
  console.log "name exists" # Prints out: name exists

# With object properties
person =
  name: "Sara"
  job: "DBA"

console.log person?.name # console.log(person != null ? person.name : void 0);
console.log person?.age # outputs: undefined

console.log superman?.realname # outputs: undefined
# above compiles to: console.log(typeof superman !== "undefined" && superman !== null ? superman.realname : void 0);

# Chaining Existential Operators - protects developer from undefined errors
console.log person?.name?.firstLetter?.somethingElse

# Existential Operator does not protect from undefined method
#console.log person?.name?.firstLetter()?.somethingElse
# TypeError: Object Sara has no method 'firstLetter'

# Assign only if not a falsy value
name ?= "Joe"
console.log name # Jeremy

name2 = false;
name2 ?= "Joe"
console.log name2 # false

name3 = false
name3 ||= "Joe"
console.log name3 # Joe

# Greater Than Less Than Operators

# Chain Comparisons
x = 4
if 0 <= x <= 10
  console.log "#{x} is between 0 and 10"

