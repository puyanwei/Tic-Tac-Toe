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
      board.position = 1
      board.add_position
      board.next_turn
      board.position = 5
      board.add_position
      board.next_turn
      board.position = 4
      board.add_position
      board.next_turn
      expect(board.board_state).to eq(["X", " ", " ", "X", "O", " ", " ", " ", " "])
    end
  end

  describe '#taken?' do
    it 'throws an error if position is already taken' do
      board.position = 1
      board.add_position
      expect { board.add_position }.to raise_error("position already taken")
    end
  end

  describe '#win?' do
    it "sets win to true if there is a win" do
      allow(board).to receive(:win?).and_return(true)
      expect(board.win?).to be(true)
    end
  end

  describe '#tie?' do
    it "sets tie to true if there are no more positions left" do
      allow(board).to receive(:tie?).and_return(true)
      expect(board.tie?).to be(true)
    end

    it "should not be true if the game does not have 3 in a row" do
      allow(board).to receive(:tie?).and_return(false)
      expect(board.tie?).to be(false)
    end
  end
end
