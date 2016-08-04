s = ".sdrawkcab si gnirts sihT"
puts s.reverse

s = "order. wrong the in are words These"
# the regular expression /(\s+)/ matches one or more whitespace characters
puts s.split(/(\s+)/).reverse!.join('')
# the regular expression \b matches a word boundary
puts s.split(/\b/).reverse!.join('')

puts "Three little words".split(/\s+/)
puts "Three little words".split(/(\s+)/)