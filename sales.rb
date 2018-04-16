class Item
	
	attr_accessor :quantity
	attr_accessor :procduct
	attr_accessor :price
	attr_accessor :tax
	def initialize (quantity,procduct,price )
		@quantity=quantity
		@procduct=procduct
		@price=price
		@basictax=price*0.1
		@importtax=0
	end

	def display
		
		puts " #{@quantity} #{@procduct} #{@price} #{@tax}"	
	end
	def saletax
		@array=["book","chocolate","pills"]
		
		@array.each {|x|
			if @procduct.include? x.to_s 
				@basictax=0
			end
		}
		
		if @procduct.include? "imported"
			@importtax=@price*0.05
		else
			@importtax=0
		end
		
		@tax=@basictax+@importtax
		@tax=(@tax * 20).ceil.to_f / 20
		@price+=@tax
		@price=@price.round(2)
	end
end


item1=Item.new(1, "book", 12.49)
item2=Item.new(1, "music cd", 14.99)
item3=Item.new(1, "chocolate bar", 0.85)
item4=Item.new(1, "imported box of chocolates", 10.00)
item5=Item.new(1, "imported bottle of perfume", 47.50)
item6=Item.new(1, "imported bottle of perfume", 27.99)
item7=Item.new(1, "bottle of perfume", 18.99)
item8=Item.new(1, "packet of headache pills", 9.75)
item9=Item.new(1, "box of imported chocolates", 11.25)

array=[item1,item2,item3]
array.each do |x|
	x.saletax
end
puts "Quantity, Product, Price"
array.each { |x| x.display }
sumtax=0
sumprice=0
array.each do |x|
	sumtax+=x.tax
	sumprice+=x.price
end
puts "Sales tax= #{sumtax.round(2)} "
puts "Total= #{sumprice.round(2)}"

