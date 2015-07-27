class Board
 
 	Alpha26 = ("a".."j").to_a

  def initialize
  	@ships = []
  end

  def place(ship, column, row, direction) 
  	fail "Row too large" if row > 10
  	fail "Row too small" if row < 1
		fail "Column too large" if column.between? ('j'..'z') 
  	@ships << [ship, column, row, direction]
  	@ships
  end

  def to_i26
    result = 0
    downcase!
    (1..length).each do |i|
      char = self[-i]
      result += 26**(i-1) * (Alpha26.index(char) + 1)
    end
    result
  end

end
