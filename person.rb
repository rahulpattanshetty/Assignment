class Person
 attr_accessor :name, :age

 def initialize(details)
 	@name = details[:name]
 	@age = details[:age]
 end
 def details
 	puts "#{name} age is #{age}"
 end
end

p = Person.new({:name => "john", :age =>34})
p.details
