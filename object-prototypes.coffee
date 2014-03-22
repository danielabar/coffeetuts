###
// JavaScript Refresher: Constructor Function
//  Feature 1: No return statement
//  Feature 2: 'this' keyword refers to new Dog object

// These features come as result of using 'new' keyword
// By convention, capitalize constructor function names so people
//  know its not a regular function, but should be called with 'new'

function Dog (name) {
  this.name = name;
}

// Give Dog instances a growl method
// Every new instance of Dog object has access to methods defined
//  on its prototype
Dog.prototype.growl = function() {
  console.log("growl");
}

// Create a Dog and growl
var myDog = new Dog("Fido")
myDog.growl();
###

# Now let's do the same thing in CoffeeScript

# 'this' keyword not required, replaced with '@', no dot required
# No need to write explicit assignment code
Dog = (@name) ->

# '.prototype.' replaced with '::'
Dog::growl = ->
  console.log "*growl*"

d = new Dog "Rusty"
console.dir d.name
d.growl()

# Can have prototype extend another

BorderCollie = (@name, @tricks) ->

# Make BorderCollie inherit all prototype methods of Dog
BorderCollie extends Dog

# NOTE: use '@name' to refer to property of BorderCollie object
BorderCollie::perform = (trick) ->
  if trick in @tricks
    console.log "#{@name} is #{trick}"
  else
    console.log "*whine*"

smartFido = new BorderCollie "Fido", ["playing dead", "catching frisbee", "rolling over"]
smartFido.perform "playing dead"
smartFido.perform "staying"
smartFido.growl()
