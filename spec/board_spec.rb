RSpec.describe Board do
  subject(:board) { described_class.new }
  let(:checker) { double :checker }

  describe '#initialize' do
    it 'creates an empty board' do
      expect(board.state).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
    end
  end

  describe '#add_position' do
    it 'alternates between symbols per turn and takes that position on the board' do
      board.add_position(4)
      board.next_turn
      board.add_position(5)
      board.next_turn
      board.add_position(1)
      board.next_turn
      expect(board.state).to eq(["X", " ", " ", "X", "O", " ", " ", " ", " "])
    end
  end

  describe '#taken?' do
    it 'throws an error if position is already taken' do
      board.add_position(1)
      expect { board.add_position(1) }.to raise_error("position already taken")
    end
  end
end
