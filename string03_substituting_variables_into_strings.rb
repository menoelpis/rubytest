number = 5
puts "The number is #{number}."
puts "The number is #{5}."
puts "The number after #{number} is #{number.next}."
puts "The number prior to #{number} is #{number-1}."
puts "We're ##{number}!"

puts "#{number}" == '5'

puts %{Here is #{class InstantClass
    def bar
      "some text"
    end
  end
  InstantClass.new.bar
}.}

# An alternative to #{} construct
name = "Mr. Jason"
email = <<END
Dear #{name},

Unfortunately we cannot process your insurance claim at this time.
This is because we are a bakery, not an insurance company.

Signed,
	Nil, Null, and None
	Bakers to Her Majesty the Singleton
END

puts email

# A printf-style strings

template = 'Oceania has always been at war with %s.'
puts template % 'Eurasia' 
puts template % 'Eastasia'

puts 'To 2 decimal places: %.2f' % Math::PI
puts 'Zero-padded: %.5d' % Math::PI

# ERB template

require 'erb'

template = ERB.new %q{Chunky <%= food %>!}
food = "bacon"
puts template.result(binding)
food = "peanut butter"
puts template.result(binding)
puts template.result

# More sophisticated ERB template

template = %q{
<% if problems.empty? %>
	Looks like your code is clean!
<% else %>
	I found the following possible problems with your code:
	<% problems.each do |problem, line| %>
		* <%= problem %> on line <%= line %>
	<% end %>
<% end %>}.gsub(/^\s+/, '')

template = ERB.new(template, nil, '<>')

problems = [["Use of is_a? instead of duck typing", 23],
			["eval() is usually dangerous", 44]]

puts template.run(binding)

problems = []
puts template.run(binding)


# More sophisticated ERB template 2
class String
	def substitute(binding=TOPLEVEL_BINDING)
		eval(%{"#{self}"}, binding)
	end
end

template = %q{Chunky #{food}!}
puts template

food = 'bacon'
puts template.substitute(binding)

food = 'three layered pork chop'
puts template.substitute(binding)

food = '#{system("dir")}'
puts template.substitute(binding)




