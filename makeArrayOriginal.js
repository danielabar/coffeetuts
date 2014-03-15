function makeArray (dimension) {
  var arr = [];
  for (var i = 0; i < dimension; i++) {
    arr[i] = [];
    for (var j = 0; j < dimension; j++) {
      arr[i][j] = '1111';
    }
  }
  return arr;
}

var myArr = makeArray(4);

console.log(myArr);