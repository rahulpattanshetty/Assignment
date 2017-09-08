class Stock
	attr_accessor :name,:price

	def initialize(details)
		@name = details[:name]
		@price = details[:price]
	end
	def details
		puts "#{name}-Price #{price}"
		
	end

end

class User
	attr_accessor :stock_name, :quantity, :price, :status

	def initailize(details)
		@stock_name = details[:stock_name]
		@quantity = details[:quantity]
		@price = details[:price]
		@status = details[:status]
	end
	def details
		puts "#{stock_name} #{quantity} #{price}"
		
	end
	
end

s1 = Stock.new({:name =>"RIL", :price =>231})
s2 = Stock.new({:name =>"BEL", :price =>412})
stock = []
stock.push(s1,s2)
puts "Stocks available are"
puts "*" * 50
stock.each do |s|
		s.details
	end
puts "*" * 50


u = User.new

count = 0

user = []
cont = "y"
while cont == "y"
	puts "Enter Your choice buy/sell (b/s)"
	choice = gets.chomp
	case choice
	when "b"
		puts "Name of the stock"
		u.stock_name=gets.chomp
		puts "How many quantity"
		u.quantity=gets.to_i
		u.price = s1.price
		u.status = "B"
		user.push(u)
		puts "#{u.stock_name} #{u.quantity} #{u.price} B"

	when "s"
		puts "*" * 50
		puts "List of Stocks"
		puts "*" * 50
		u.details
		puts "*" * 50
		puts "Name of the stock"
		u.stock_name=gets.chomp
		puts "How many quantity"
		u.quantity=gets.to_i
		puts "At what price"
		price = gets.to_f.round
		
		if price == 0
			count +=1
			puts "Buy: #{u.price} Sell: #{price}; Badly formed #{count}: badly-formed 1st simple order ;badly-formed nth simple order ;"
		else
			u.price = price
			puts "#{u.stock_name} #{u.quantity} #{u.price} S"	
		end
		
	else
		puts "Invalid option"
	end
	puts "Do you want cont.(y/n)"
		cont=gets.chomp
end