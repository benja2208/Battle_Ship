require "ship"

describe Ship do
	# let(:too_big) {rand(6..10**10)}
	# let(:ship_over_limit){Ship.new too_big}
	# let(:too_small) {rand(-10**10..2)}
	# let(:ship_under_limit){Ship.new too_small}

	describe 'types of ships' do 
		it 'Cannot have a size greater than 5' do 
			number = rand(6..10**10)
			expect{Ship.new number}.to raise_error 'Size too large'
		end

		it 'Cannot have a size smaller than 2' do 
			number = rand(-10**10..2)
			expect{Ship.new number}.to raise_error 'Size too small'
		end  
	end 
	
end