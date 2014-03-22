// JavaScript rules refresher by example

// In example below, 'this' refers to object literal which function is a part of
var counter = {
  count: 0,
  inc: function() {
    return this.count++; // this.count is how we access count property of the object referenced by counter
  }
}

console.log(counter.inc()); // 0
console.log(counter.inc()); // 1
console.log(counter.inc()); // 2

// Save a shortcut to the counter.inc function
var inc = counter.inc;

console.log(inc()); // NaN
// Get NaN instead of expected 3 because we've taken the function out of its context
// No longer executing as if its part of counter object,
// Executing as a global function with no object related to it

// To fix this, use the function's call method
// In JavaScript, functions are objects, therefore they can have methods and properties
// Passing object literal as parameter to call method:
//  Doing so means we're telling it what we want 'this' to be inside function
console.log(inc.call({ count : 10 }));