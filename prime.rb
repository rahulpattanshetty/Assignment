def prime(number)
	if number > 1
		if (number != 2) && (number !=3)
			if (number % 2 == 0) || (number % 3 == 0) 
				return false
			else
				return true
			end
		else
			return true	
		end
	end
end

puts prime(15)
puts prime(5)
puts prime(7)
puts prime(3)