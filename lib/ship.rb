class Ship

	def initialize size
		raise 'Size too large' if size > 5
		raise 'Size too small' if size < 2
		@size = size
	end 

	def size 
		@size
	end 
	
end