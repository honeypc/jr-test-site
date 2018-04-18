require_relative './cart'
require_relative './exempt'
require_relative './good'
require_relative './seller'
require_relative './item'

#Input 1
good1=Exempt.new('book',12.49)
good2=Good.new('music cd',14.99)
good3=Exempt.new('chocolate bar',0.85)
item1=Item.new(good1,1)
item2=Item.new(good2,1)
item3=Item.new(good3,1)
seller=Seller.new
seller.add_to_cart(item1)
seller.add_to_cart(item2)
seller.add_to_cart(item3)
seller.recept
puts seller.print_recept
#Input 2
good4=Exempt.new('imported box of chocolates',10.0)
good5=Good.new('imported bottle of perfume',47.50)
item4=Item.new(good4,1)
item5=Item.new(good5,1)
seller2=Seller.new
seller2.add_to_cart(item4)
seller2.add_to_cart(item5)
seller2.recept
puts seller2.print_recept
#Input 3
good6=Good.new('imported bottle of perfume',27.99)
good7=Good.new('bottle of perfume',18.99)
good8=Exempt.new('packet of headache pills',9.75)
good9=Exempt.new('box of imported chocolates',11.25)
item6=Item.new(good6,1)
item7=Item.new(good7,1)
item8=Item.new(good8,1)
item9=Item.new(good9,1)
seller3=Seller.new
seller3.add_to_cart(item6)
seller3.add_to_cart(item7)
seller3.add_to_cart(item8)
seller3.add_to_cart(item9)
seller3.recept
puts seller3.print_recept



# ## Input 1
# Quantity, Product, Price

# 1, book, 12.49

# 1, music cd, 14.99

# 1, chocolate bar, 0.85

# ## Input 2
# Quantity, Product, Price

# 1, imported box of chocolates, 10.00

# 1, imported bottle of perfume, 47.50

# ## Input 3
# Quantity, Product, Price
# 1, imported bottle of perfume, 27.99

# 1, bottle of perfume, 18.99

# 1, packet of headache pills, 9.75

# 1, box of imported chocolates, 11.25

# # OUTPUT

# ## Output 1
# 1, book, 12.49

# 1, music CD, 16.49

# 1, chocolate bar, 0.85

# Sales Taxes: 1.50

# Total: 29.83

# ## Output 2
# 1, imported box of chocolates, 10.50

# 1, imported bottle of perfume, 54.65

# Sales Taxes: 7.65

# Total: 65.15

# ## Output 3
# 1, imported bottle of perfume, 32.19

# 1, bottle of perfume, 20.89

# 1, packet of headache pills, 9.75

# 1, imported box of chocolates, 11.85

# Sales Taxes: 6.70

# Total: 74.68
