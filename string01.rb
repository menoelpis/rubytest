string = "My first string"

puts "The length of the string is " + string.length.to_s
puts "'i' occurs " + string.count('i').to_s + " times"
puts string.length.next

french_string = "il \xc3\xa9tait une fois"
puts french_string

long_string = <<EOF
Here is a long string
With many paragraphs
EOF

puts long_string