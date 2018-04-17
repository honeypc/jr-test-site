require_relative './cart'
require_relative './exempt'
require_relative './good'
require_relative './seller'
require_relative './item'

good1=Exempt.new("book",12.49)
item1=Item.new(good1,1)
seller1=Seller.new
seller1.add_to_cart(item1)

good2=Good.new("music cd",14.99)
item2=Item.new(good2,1)
seller1.add_to_cart(item2)

good3=Exempt.new("chocolate bar",0.85)
item3=Item.new(good3,1)
seller1.add_to_cart(item3)

seller1.recept
seller1.print_recept
