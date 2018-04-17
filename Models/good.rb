 class Good
	attr_accessor :product, :price
	def initialize(product, price)
		@product=product
		@price=price
	end

	def set_basic_sale_tax
		0.1
	end

	def set_import_duty_tax
		if @product.include? "imported" 
			0.05
		else
			0.0
		end
	end

	def total_tax
		(set_import_duty_tax+set_basic_sale_tax).round(2)
	end
end
