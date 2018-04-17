require_relative './good'
class Seller
	def initialize()
		@cart=Cart.new
		@total_sale_tax=0.0
		@total_price=0.0
	end

	def add_to_cart(item1)
		@cart.item<<item1
	end
	def  recept 
		@cart.item.each {|x|
			@total_sale_tax+=x.tax_with_quantity
			@total_price+=x.price_with_quantity
		}	
	end
	def print_recept
		puts "Quantity, Product, Price"
		@cart.item.each{|x|
			puts "#{x.quantity} #{x.good.product} #{x.good.price}"
		}	
		puts "Sales tax=#{total_sale_tax}"
		puts "Total=#{total_price}"
	end
end
