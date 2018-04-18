require_relative './good'
require_relative './cart'
require_relative './exempt'
require_relative './item'
class Seller
	attr_accessor :cart,:total_sale_tax,:total_price
	def initialize()
		@cart=Cart.new()
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
		@total_sale_tax=@total_sale_tax.round(2)
		@total_price=@total_price.round(2)
	end
	def print_recept
		output=''
		output+= "Quantity, Product, Price \n"
		@cart.item.each{|x|
			output+= "#{x.quantity}, #{x.good.product}, #{x.price_with_quantity} \n"
		}	
		output+= "Sales Taxes: #{@total_sale_tax} \n"
		output+= "Total: #{@total_price} \n"
	end
end

# good1=Exempt.new('book',12.49)
# good2=Good.new('music cd',14.99)
# good3=Exempt.new('chocolate bar',0.85)
# item1=Item.new(good1,1)
# item2=Item.new(good2,1)
# item3=Item.new(good3,1)
# seller=Seller.new
# seller.add_to_cart(item1)
# seller.add_to_cart(item2)
# seller.add_to_cart(item3)
# if  seller.cart.item[2]==item3
# 	puts 'true'
# else
# 	puts 'false'
# end