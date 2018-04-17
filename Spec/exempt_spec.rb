require '../Models/exempt'

describe Exempt do 
	context 'not imported exempt good' do 
		let(:exempt) {Exempt.new('book',12.49)}
		describe '#initialize' do 
			it do 
				expect(exempt.product).to eq 'book'
			end
			it do 
				expect(exempt.price).to eq 12.49
			end
		end
		describe '#set_basic_sale_tax' do
			it do 
				expect(exempt.set_basic_sale_tax).to eq 0.0
			end

		end
		describe '#set_import_duty_tax' do 
			it do 
				expect(exempt.set_import_duty_tax).to eq 0.0
			end
		end
		describe '#total_tax' do 
			it do 
				expect(exempt.total_tax).to eq 0.0
			end
		end

	end
	context 'imported exempt good' do 
		let(:exempt) {Exempt.new('imported box of chocolates',10.0)}
		describe '#initialize' do 
			it do 
				expect(exempt.product).to eq 'imported box of chocolates'
			end
			it do 
				expect(exempt.price).to eq 10.0
			end
		end
		describe '#set_basic_sale_tax' do 
			it do 
				expect(exempt.set_basic_sale_tax).to eq 0.0
			end
		end
		describe '#set_import_duty_tax' do 
			it do 
				expect(exempt.set_import_duty_tax).to eq 0.05
			end
		end
		describe '#total_tax' do 
			it do 
				expect(exempt.total_tax).to eq 0.05
			end
		end
	end
end
#1, book, 12.49
#1, imported box of chocolates, 10.00
