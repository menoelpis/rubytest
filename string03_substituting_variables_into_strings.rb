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
