


input = "ZNGA 1300 2.62 B, CLH15.NYM 50 56 B, OWW 1000 11 B, OGG 20 580.1 B"

stock = ""
quantity = 0
price = 0
status = ""
total_b = 0
total_s = 0
badly_formed = 0
array = input.split(",")
errors = ""
array.each do |item|
	stock = item.split(" ")[0]
	quantity = item.split(" ")[1]
	price = item.split(" ")[2]
	status = item.split(" ")[3]
	if price.include?(".") && !(quantity.include?("."))
		if status == "B"
			total_b = total_b + quantity.to_i * price.to_f 
		elsif status == "S"
			total_s = total_s + quantity.to_i * price.to_f
		end	
	else
		badly_formed +=1
		errors += item + ";"
			
	end
end

if errors.empty?
	puts "Buy:#{total_b.round} Sell:#{total_s.round}"
else
	puts "Buy:#{total_b.round} Sell:#{total_s.round}; Badly formed #{badly_formed}:#{errors}"

end