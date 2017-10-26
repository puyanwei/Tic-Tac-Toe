RSpec.describe Board do
  subject(:board) { described_class.new }
  # let(:checker) { double :checker }

  describe '#initialize' do
    it 'creates an empty board' do
      expect(board.state).to eq("[ ][ ][ ]\n[ ][ ][ ]\n[ ][ ][ ]")
    end
  end

  describe '#play' do
    it 'alternates between symbols per turn and takes that position on the board' do
      board.add_position(4)
      board.add_position(5)
      board.add_position(1)
      expect(board.state).to eq("[X][ ][ ]\n[X][O][ ]\n[ ][ ][ ]")
    end
  end

  describe '#positions_left?' do
    it 'returns "game over, its a tie!" when there are no more spaces left' do
      board.add_position(1)
      board.add_position(2)
      board.add_position(5)
      board.add_position(3)
      board.add_position(6)
      board.add_position(4)
      board.add_position(7)
      board.add_position(9)
      expect(board.add_position(8)).to eq("game over, its a tie!")
    end
  end
end
