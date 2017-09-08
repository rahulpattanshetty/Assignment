


def diagonal_sum(input)
	sum = 0
	input.each_with_index do |array,index|
		sum += array[index]

	end
	return sum
end
input = [[1, 0, 0, 0],[0, 1, 0, 0],[0, 0, 1, 0],
                [0, 0, 0, 1]]
puts diagonal_sum(input)

input = [[1, 0, 0, 0, 0],[0, 1, 0, 0, 0],[0, 0, 1, 0, 0],[0, 0, 0, 1, 0],[0, 0, 0, 0, 1]]

puts diagonal_sum(input)

