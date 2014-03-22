# CoffeeScript makes writing regexes a little easier

emails = [
  'andrew@example.com',
  'joe@plumber',
  'joe.567@gmail.com',
  'lucy*newsletter@stratford.co.uk',
  'andrew']

# Compare each entry in emails against regex to validate email format
# Recall heredocs allow you to write multi-line strings
# Hereregex is a multi-line regular expression
# Can also add comments for each line - can document complex regex
# Hereregex is delimited by 3 forward slashes at beginning and end
emailRegex = ///
  ([\w\.+-]+)     # unique name
  @               # at-sign
  (\w+)           # domain name
  (\.\w+[\w\.]*)  # top level domain
///

# Every string in JavaScript has match method which takes regex param
for email in emails
  match = email.match emailRegex
  if match?
    console.log "#{email} matched"
  else
    console.log "#{email} NOT matched"
