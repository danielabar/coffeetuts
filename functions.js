// Generated by CoffeeScript 1.7.1
(function() {
  var funcReturnsObj, greet, greet2, greetSingleLine, noArgFunc;

  greet = function(name) {
    return console.log("Hello " + name + "!");
  };

  greetSingleLine = function(name) {
    return console.log("Hello " + name);
  };

  greet("CoffeeScript Learners");

  noArgFunc = function() {
    return console.log("Hi there stranger");
  };

  noArgFunc();

  funcReturnsObj = function(myparam) {
    return {
      name: "Sue",
      job: "Developer"
    };
  };

  console.log(funcReturnsObj("something").name);

  greet("Joe") + 10;

  greet("Joe" + 10);

  greet2 = function(name) {
    return name = name || "friend";
  };

  greet2();

}).call(this);
