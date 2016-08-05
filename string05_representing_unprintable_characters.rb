octal = "\000\001\010\020"
puts octal.each_byte { |x| puts x }

hexadecimal = "\x00\x01\x10\x20"
puts hexadecimal.each_byte { |x| puts x }

open('smiley.html', 'wb') do |f|
f << '<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">'
f << "\xe2\x98\xBA"
end