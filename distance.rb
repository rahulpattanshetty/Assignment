$result = []
$sum = []
def bestSum(numbers,n, max)
	array = numbers.combination(n).to_a

	array.each do |number|
		if number.inject(:+) < max
			$result.push(number)
			$sum.push(number.inject(:+))
		end
	end
end

ts = [50, 55, 57, 58, 60] 
bestSum(ts,3,174)
puts "#{$result}"
puts "#{$sum}"

