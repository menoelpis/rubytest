# Solution 1
hash = { key1: "val1", key2: "val2"}
string1 = ""
hash.each { |k,v| string1 << "#{k} is #{v}\n"}
puts "Solution 1 :\n" + string1

# Solution 2
string2 = ""
hash.each { |k,v| string2 << k.to_s << " is " << v << "\n"}
puts "Solution 2 :\n" + string2

puts hash.keys.join("\n") + "\n"

# Array#join Example
data = ['1', '2', '3']
s = ''
data.each { |x| s << x << ' and a ' }
puts s
puts data.join(' and a ')

s = ""
data.each_with_index { |x, i| s << x; s << "|" if i < data.length-1 }
puts s