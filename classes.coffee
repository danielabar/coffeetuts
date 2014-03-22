# class is encapsulated in immediately invoked function expression
class Dog
  constructor: (@name) ->
  # growl: -> console.log '*growl*'
  growl: -> console.log "#{@name} says grrrr..."

# Assign tricks to be an empty array by default
class BorderCollie extends Dog
  constructor: (name, @tricks = []) ->
    super name
  perform: (trick) ->
    console.log if trick in @tricks then "#{@name} is #{trick}" else "*whine*"

  # Give BorderCollie a custom growl method, but only in certain cases
  growl: (person) ->
    if person is @master
      console.log '*bark*'
    else
      # calling super with no parens means all params that got
      # passed to this method (person) will be passed to super method (Dog growl)
      # If call super with parens 'super()', no params are passed to super
      super()

dog = new Dog 'Rusty'
console.log dog.name # Rusty
dog.growl()

dog2 = new BorderCollie 'Oreo', ['playing dead', 'fetching a ball']
dog2.master = "Jeremy"
console.log dog2.name
dog2.perform 'playing dead'
dog2.perform 'catching a frisbee'

# Make sure extend is working, BorderCollie 'inherits' growl method from Dog 'class'
dog2.growl("Jeremy")
dog2.growl("Adam")

# Test default tricks array
dog3 = new BorderCollie 'Fido'
console.log dog3.name
dog3.perform 'shake'