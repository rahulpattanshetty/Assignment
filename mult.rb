def mutl(number) 
	result = []
	count = 1
	while count < number
		if (count % 3 == 0) || (count % 5 == 0) 
			result.push(count)
		end
	count +=1
	end
	return result.inject(:+)
end
puts mutl(10)
