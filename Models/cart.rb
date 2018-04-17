class Cart
	attr_accessor :item
	def initialize()
		@item=[]
	end
	def add_item(item1)
		@item<<item1
	end
end
