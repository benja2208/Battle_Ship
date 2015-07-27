require "board"

describe Board do

let(:board){Board.new}
let(:ship){ double :ship }

  it { is_expected.to respond_to(:place).with(1).argument }

  it "places a ship" do
    board.place(ship)
    expect(board.show_board).to eq [:s]
  end


end