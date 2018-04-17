require_relative './good'
require_relative './cart'
require_relative './exempt'
require_relative './item'
class Seller
	attr_accessor :cart
	def initialize()
		@cart=[]
		@total_sale_tax=0.0
		@total_price=0.0
	end
	def add_to_cart(item1)
		@cart<<item1
	end
	def  recept 
		@cart.each {|x|
			@total_sale_tax+=x.tax_with_quantity
			@total_price+=x.price_with_quantity
		}	
	end
	def print_recept
		puts "Quantity, Product, Price"
		@cart.each{|x|
			puts "#{x.quantity} #{x.good.product} #{x.good.price}"
		}	
		puts "Sales tax=#{@total_sale_tax}"
		puts "Total=#{@total_price}"
	end
end

# good1=Exempt.new("book",12.49)
# item1=Item.new(good1,1)
# seller1=Seller.new
# seller1.add_to_cart(item1)
# seller1.recept
# seller1.print_recept