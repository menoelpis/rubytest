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

# string => "My first string"
puts string.slice(3,5)
puts string.byteslice(3) + string.byteslice(4) + string.byteslice(5) + string.byteslice(6) + string.byteslice(7)
puts string[3,5]

puts string.upcase  # => "MY FIRST STRING"
puts string 	    # => "My first string"
puts string.upcase! # => "MY FIRST STRING"
puts string         # => "MY FIRST STRING"

puts string.empty?
puts string.include? 'MY'