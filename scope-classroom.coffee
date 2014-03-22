# Classroom example from scope-refresher.js

# Fat arrow solves problem of 'this' such that:
#   'this' inside the function continues to be
#   whatever it was outside the function
classroom =
  students: ["John", "Jane", "Jill", "Joe"]
  print: ->
    getName = (i) =>
      this.students[i]

    for s,i in this.students
      console.log getName i

classroom.print()