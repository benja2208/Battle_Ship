class Board

#:w = "water"

  def initialize
    @grid = [:w]
  end

  def place(ship)
    @grid = [:s]

  end

  def show_board
    @grid
  end

end