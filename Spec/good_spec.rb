require './spec_helper'
describe Good do 
	context "not import good" do
		let(:good) { Good.new('music cd', 14.49) }

		describe '#initialize' do
			it do
				expect(good.product).to eq 'music cd' 
			end
			it do
				expect(good.price).to eq 14.49
			end
		end
		describe '#set_basic_sale_tax' do
			it do
			expect(good.set_basic_sale_tax).to eq 0.1
		end
		end
		describe '#set_import_duty_tax' do 
			it do
			expect(good.set_import_duty_tax).to eq 0.0
			end
		end
		describe '#total_tax' do
			it do
				expect(good.total_tax).to eq 0.1
			end
		end
	end
	context "import good" do 
		let(:good) {Good.new('imported box of chocolates', 10.0) }
		describe '#initialize' do 
			it do 
			 expect(good.product).to eq 'imported box of chocolates'
			end
			it do  
				expect(good.price).to eq 10.0
			end
		end
		describe '#set_basic_sale_tax' do 
			it do
			 expect(good.set_basic_sale_tax).to eq 0.1
			end
		end
		describe '#set_import_duty_tax' do 
			it do 
				expect(good.set_import_duty_tax).to eq 0.05
			end
		end
		describe '#total_tax' do 
			it do 
				expect(good.total_tax).to eq 0.15
			end
		end
	end
end
#1, music cd, 14.99
#1, imported box of chocolates, 10.00