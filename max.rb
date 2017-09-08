input = [[0, 1, 1 ,1],[0, 0, 1, 1],[1 , 1, 1, 1],[0 ,0,0,0]]
max = 0
index_value = 0
input.each_with_index do |array,index|
	count = array.count(1)
	if count > max
		max = count
		index_value = index
	end

end
puts index_value