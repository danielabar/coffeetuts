// Generated by CoffeeScript 1.7.1
(function() {
  var email, emailRegex, emails, match, _i, _len;

  emails = ['andrew@example.com', 'joe@plumber', 'joe.567@gmail.com', 'lucy*newsletter@stratford.co.uk', 'andrew'];

  emailRegex = /([\w\.+-]+)@(\w+)(\.\w+[\w\.]*)/;

  for (_i = 0, _len = emails.length; _i < _len; _i++) {
    email = emails[_i];
    match = email.match(emailRegex);
    if (match != null) {
      console.log("" + email + " matched");
    } else {
      console.log("" + email + " NOT matched");
    }
  }

}).call(this);
