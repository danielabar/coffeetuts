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
console.log("===========");

// Value of 'this' can change inside a function, example:
var classroom = {
  students: ["John", "Jane", "Jill", "Joe"],
  print: function() {
    var thiz = this; // At this line, this is bound to object classroom
    function getName (i) {
      // inside a function, 'this' refers to window or global object
      // return this.students[i];
      return thiz.students[i];
    }
    for (var i = 0; i< this.students.length; i++) {
      console.log(getName(i));
    }
  }
}
classroom.print();