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

if name?  # compiles to: if (name != null)
  console.log "name exists" # Prints out: name exists