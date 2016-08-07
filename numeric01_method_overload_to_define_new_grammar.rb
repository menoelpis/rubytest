class Numeric
	@@currencies = { 'yen' => 0.013, 'euro' => 1.292, 'won' => 1230 }
	def method_missing(method_id, *args, &block) # capture all args in case have to call super
		singular_currency = method_id.to_s.gsub( /s$/, '' )
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		else
			super
		end
	end
end

puts 3.won
puts 40.pounds # generates error 