require "thor"

class App < Thor
	desc "hello WORD", "Prints 'Hello WORD' to the screen."
	def hello word
		puts "Hello #{word}"
	end
end

App.start ARGV