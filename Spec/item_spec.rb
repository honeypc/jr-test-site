require './spec_helper'
describe Item do 
	context 'good is not imported music cd' do 
		let(:good){Good.new('music cd',10)}
		let(:item) {Item.new(good,quantity)}
		context'quantity=1' do 
			let(:quantity){1}
			it '#price_with_quantity' do 
				expect(item.price_with_quantity).to eq 11
			end
			it '#tax_with_quantity' do 
				expect(item.tax_with_quantity).to eq 1
			end
		end
		context 'quantity=2' do 
			let(:quantity){2}
			it '#price_with_quantity' do 
				expect(item.price_with_quantity).to eq 22
			end
			it '#tax_with_quantity' do 
				expect(item.tax_with_quantity).to eq 2
			end
		end
	end
	context 'good is imported chocolate' do 
		let(:good){Exempt.new('box of imported chocolates',20)}
		let(:item){Item.new(good,quantity)}
		context 'quantity=1' do 
			let(:quantity){1}
			it '#price_with_quantity' do 
				expect(item.price_with_quantity).to eq 21
			end
			it '#tax_with_quantity' do 
				expect(item.tax_with_quantity).to eq 1
			end
		end
		context 'quantity=2' do 
			let(:quantity){2}
			it '#price_with_quantity' do 
				expect(item.price_with_quantity).to eq 42
			end
			it '#tax_with_quantity' do 
				expect(item.tax_with_quantity).to eq 2
			end
		end
	end
	
end
#1, box of imported chocolates, 20
