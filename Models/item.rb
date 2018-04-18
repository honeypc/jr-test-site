require_relative './good'
class Item
	attr_accessor :good , :quantity
	def initialize(good, quantity)
		@good=good
		@quantity=quantity
	end
	def price_with_quantity
		(tax_with_quantity+good.price).round(2)
	end 
	def tax_with_quantity
		(@quantity*@good.price*@good.total_tax*20).ceil.to_f/20
	end
end


