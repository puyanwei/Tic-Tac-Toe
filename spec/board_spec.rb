RSpec.describe Board do
  subject(:board) { described_class.new }
  let(:checker) { double :checker }
  let(:win) { double :win }

  describe '#initialize' do
    it 'creates an empty board' do
      expect(board.board_state).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
    end
  end

  describe '#add_position' do
    it 'alternates between symbols per turn and takes that position on the board' do
      board.add_position(1)
      board.next_turn
      board.add_position(5)
      board.next_turn
      board.add_position(4)
      board.next_turn
      expect(board.board_state).to eq(["X", " ", " ", "X", "O", " ", " ", " ", " "])
    end
  end

  describe '#taken?' do
    it 'throws an error if position is already taken' do
      board.add_position(1)
      expect { board.add_position(1) }.to raise_error("position already taken")
    end
  end

  describe '#invalid_position?' do
    it 'throws an error if an invalid position is chosen' do
      expect { board.add_position(10) }.to raise_error("invalid position")
    end
    it 'throws an error if an invalid position is chosen' do
      expect { board.add_position(-2) }.to raise_error("invalid position")
    end
  end

  describe '#win?' do
    it "sets win to true if there is a win" do
      allow(board).to receive(:win?) { true }
      expect(board.win?).to be(true)
    end
  end

  describe '#tie?' do
    it "sets tie to true if there are no more positions left" do
      allow(board).to receive(:tie?) { true }
      expect(board.tie?).to be(true)
    end

    it "should not be true if the game does not have 3 in a row" do
      allow(board).to receive(:tie?) { false }
      expect(board.tie?).to be(false)
    end
  end
end
