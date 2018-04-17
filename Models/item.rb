require_relative './good'
class Item
	attr_accessor :good , :quantity
	def initialize(good, quantity)
		@good=good
		@quantity=quantity

	end
	def price_with_quantity
		@quantity*@good.price*(1+@good.total_tax)
	end
	def tax_with_quantity
		@quantity*@good.price*@good.total_tax
	end
end

# good=Good.new('book',10.0)
# item=Item.new(good,1)
# puts item.price_with_quantity
# puts item.tax_with_quantity