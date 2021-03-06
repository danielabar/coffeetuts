// Generated by CoffeeScript 1.7.1
(function() {
  var funcReturnsObj, greet, greet2, greetOption, greetSingleLine, noArgFunc, rand, test, test2, test3,
    __slice = [].slice;

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

  console.log(greet2());

  greetOption = function(name) {
    if (name == null) {
      name = "friend";
    }
    return console.log("greetOption: Hello " + name);
  };

  greetOption();

  greetOption("Larry");

  test = function() {
    var x, y, z;
    x = arguments[0], y = arguments[1], z = 3 <= arguments.length ? __slice.call(arguments, 2) : [];
    console.log(x);
    console.log(y);
    return console.log(z);
  };

  test("one", "two");


  /*
  one
  two
  []
   */

  console.log("================");

  test("one", "two", "three");


  /*
  one
  two
  [ 'three' ]
   */

  console.log("================");

  test("one", "two", "three", "four");


  /*
  one
  two
  [ 'three', 'four' ]
   */

  console.log("================");

  test2 = function() {
    var x, y, z, _i;
    x = 3 <= arguments.length ? __slice.call(arguments, 0, _i = arguments.length - 2) : (_i = 0, []), y = arguments[_i++], z = arguments[_i++];
    console.log(x);
    console.log(y);
    return console.log(z);
  };

  test2("one", "two", "three", "four", "five");


  /*
  [ 'one', 'two', 'three' ]
  four
  five
   */

  console.log("================");

  test2("one", "two");


  /*
  []
  one
  two
   */

  test3 = function() {
    var x, y, z, _i;
    x = arguments[0], y = 3 <= arguments.length ? __slice.call(arguments, 1, _i = arguments.length - 1) : (_i = 1, []), z = arguments[_i++];
    console.log(x);
    console.log(y);
    return console.log(z);
  };

  console.log("================");

  test3.apply(null, ["one", "two", "three", "four"]);


  /*
  one
  [ 'two', 'three' ]
  four
   */

  console.log("================");

  (function() {
    return console.log("Hello");
  })();

  (function(message) {
    return console.log(message);
  })("Hello Gorgeous!");

  console.log("================");

  rand = function(max, min) {
    if (max == null) {
      max = 10;
    }
    if (min == null) {
      min = 0;
    }
    return Math.floor(Math.random() * (max - min + 1)) + min;
  };

  console.log(rand());

  console.log(rand(100));

  console.log(rand(30, 15));

}).call(this);
