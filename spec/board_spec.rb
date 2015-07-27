require "board"

describe Board do

let(:board){Board.new}
let(:ship) {double :ship}

	it { is_expected.to respond_to(:place).with(4).argument }

	describe 'Placing a ship' do
		it "adds a ship to fixed coordinates with position" do
			expect(board.place :ship,:C,1,:east).to eq [[:ship,:C,1,:east]]
		end 

		it "does not allow column to not be in the range a..j" do 
			letter = ('j'..'z').to_a.sample
			expect{board.place ship,letter,2,:east}.to raise_error 'Column too large'
		end 

		it "does not allow row to be greater than 10" do
			number = rand(11..10**10)
			expect{board.place ship,:C,number,:east}.to raise_error 'Row too large'		
		end

		it "does not allow row to be smaller than 1" do
			number = rand(-10**10..1)
			expect{board.place ship,:C,number,:east}.to raise_error 'Row too small'		
		end

	end


end 