require_relative '../Models/item'
require_relative '../Models/good'
require_relative '../Models/exempt'
require_relative '../Models/cart'
require_relative '../Models/seller'
describe Seller do 
	context 'Input 1' do
		let(:seller){Seller.new}
		let(:good1){Exempt.new('book',12.49)}
		let(:good2){Good.new('music cd',14.99)}
		let(:good3){Exempt.new('chocolate bar',0.85)}
		let(:item1){Item.new(good1,1)}
		let(:item2){Item.new(good2,1)}
		let(:item3){Item.new(good3,1)}
		before do 
			seller.add_to_cart(item1)
			seller.add_to_cart(item2)
			seller.add_to_cart(item3)
		end
		describe'#add_to_cart' do
			it do
				expect(seller.cart.item[0]).to eq item1 
			end 
			it do 
				expect(seller.cart.item[1]).to eq item2
			end
			it do 
				expect(seller.cart.item[2]).to eq item3
			end
		end
		before do 
			seller.recept
		end
		
		describe '#recept' do
			it do
				 expect(seller.total_sale_tax).to eq 1.50
			end
			it do 
				expect(seller.total_price).to eq 29.83
			end
		end		
		describe '#print_recept' do 

			it do 
				expect(seller.print_recept).to eq 'Quantity, Product, Price 
1, book, 12.49 
1, music cd, 16.49 
1, chocolate bar, 0.85 
Sales Taxes: 1.5 
Total: 29.83 
'
			end
		end
	end
	context 'Input 2' do 
		let(:seller){Seller.new}
		let(:good1){Exempt.new('imported box of chocolates',10.00)}
		let(:good2){Good.new('imported bottle of perfume',47.50)}
		let(:item1){Item.new(good1,1)}
		let(:item2){Item.new(good2,1)}
		let(:item3){Item.new(good3,1)}
		before do 
			seller.add_to_cart(item1)
			seller.add_to_cart(item2)
		end
		describe'#add_to_cart' do
			it do
				expect(seller.cart.item[0]).to eq item1 
			end 
			it do 
				expect(seller.cart.item[1]).to eq item2
			end
		end
		before do 
			seller.recept
		end
		
		describe '#recept' do
			it do
				 expect(seller.total_sale_tax).to eq 7.65
			end
			it do 
				expect(seller.total_price).to eq 65.15
			end
		end		
		describe '#print_recept' do 
			it do 
				expect(seller.print_recept).to eq 'Quantity, Product, Price 
1, imported box of chocolates, 10.5 
1, imported bottle of perfume, 54.65 
Sales Taxes: 7.65 
Total: 65.15 
'			end
		end
	end

end


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