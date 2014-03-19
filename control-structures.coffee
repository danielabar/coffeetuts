# if
name = "Jeremy"
if name is "Jeremy"
  console.log "Jeremy"

# if - else
name = "Jim"
if name is "Jeremy"
  console.log "Jeremy"
else
  console.log "not Jeremy"

# if  - else if - else
name = "Sara"
if name is "Jeremy"
  console.log "Jeremy"
else if name is "Sara"
  console.log "Sara"
else
  console.log "not Jeremy or Sara"

# NOTICE absence of curly braces, block is implied by indentation level

# Single line if statement: requires 'then' keyword
firstName = "Tyler"
if firstName is "Tyler" then console.log "Hi Tyler"

# if-else if-else on single lines
if name is "Jeremy" then console.log "Jeremy"
else if name is "Sara" then console.log "Sara"
else console.log "not Jeremy or Sara" # no 'then' required here

# Modifier: Write action BEFORE conditional
lastName = "Smith"
console.log lastName if lastName is "Smith"

#######
#######

machine =
  running: no
  turnOn: -> this.running = yes

# Turn on machine if its not already running:
if not machine.running
  machine.turnOn()

# Can also write above as a modifier
machine.turnOn() if not machine.running

# A more natural way to express above using 'unless' keyword
unless machine.running
  machine.turnOn()

# 'unless' keyword together with modifier
machine.turnOn() unless machine.running
console.log machine.running

# 'unless' is condition that executes if statement is false

# More complex usage of 'unless'
# Not recommended to combine unless and else because its confusing
machine2 =
  running: no
  turnOn: -> this.running = yes
  turnOff: -> this.running = no

unless machine2.running
  machine2.turnOn()
else
  machine2.turnOff

# Switch
# Last else is equivalent to JavaScript default
person =
  name: "Jeremy"
  job: "Programmer"

giveWork = (person) ->
  switch person.job
    when "Programmer"
      console.log "Coding task ready for #{person.name}"
    when "Designer"
      console.log "Design task ready for #{person.name}"
    else
      console.log "Ummm... do you work here?"

# Can combine when and then keywords to use switch with single line:
giveWork2 = (person) ->
  switch person.job
    when "Programmer" then console.log "Coding task ready for #{person.name}"
    when "Designer" then console.log "Design task ready for #{person.name}"
    else console.log "Ummm... do you work here?"

giveWork2(person)

# NOTE: All of above statements are actually expressions,
#   That means they return a value

person1 =
  name: "Jeremy"
  relationship: "Friend"

person2 =
  name: "Jim"
  relationship: "Boss"

# We pass to console.log the result of the if/else expression
greet = (person) ->
  console.log if person.relationship is "Friend"
    "Hi, #{person.name}"
  else if person.relationship is "Boss"
    "Hello, sir"

greet(person1)
greet(person2)
console.log "==========="

# Ternary Operator implemented as
# someVar = if condition then truthy else falsey

# Can also use expression returned with 'switch'
greet2 = (person) ->
  msg = switch person.relationship
    when "Friend" then "Hi, #{person.name}"
    when "Boss" then "Hello sir"
    else "Who are you?"
  console.log msg

greet2(person1)
greet2(person2)
