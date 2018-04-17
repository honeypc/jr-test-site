require_relative './good'
 class Exempt < Good
	def set_basic_sale_tax
		0.0
	end
end