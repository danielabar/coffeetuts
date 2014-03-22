# Scope means: What is the value of keyword 'this' in a given context?

# NOT be global because CoffeeScript wraps code in anonymous function
courseTopic2 = 'CoffeeScript2'

console.log courseTopic2          # CoffeeScript2
console.log this.courseTopic2     # undefined
console.log window.courseTopic2   # undefined
console.dir this                  # Window

# If we want courseTopic2 to be available outside this file
this.courseTopic2 = courseTopic2 # attaches courseTopic2 to global object
console.log window.courseTopic2   # CoffeeScript2

# Note: Node.js doesn't have 'window' object, instead has 'global'
# To share data across files in Node.js, use 'export'
# If want this code to work in browser or Node.js
courseTopic3 = 'CoffeeScript3'
(exports ? window).courseTopic3 = courseTopic3
console.log this.courseTopic3

# Another pattern is to assign (exports ? window) to a var,
# so multiple properties can be attached
root = (exports ? window)
root.foo = "bar"