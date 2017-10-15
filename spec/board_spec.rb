RSpec.describe Board do
  subject(:board) { described_class.new }
  let(:checker) { double :checker }

  describe '#initialize' do
    it 'creates an empty board' do
      expect(board.state).to eq([0, 0, 0, 0, 0, 0, 0, 0, 0])
    end
  end

  describe '#play' do
    it 'alternates between symbols per turn and takes that position on the board' do
      board.play(4)
      board.play(5)
      board.play(1)
      expect(board.state[3]).to eq('X')
      expect(board.state[4]).to eq('O')
      expect(board.state[0]).to eq('X')
      expect(board.state[8]).to eq(0)
    end
  end

  describe '#positions_left?' do
    it 'returns "game over, its a tie!" when there are no more spaces left' do
      board.play(1)
      board.play(2)
      board.play(5)
      board.play(3)
      board.play(6)
      board.play(4)
      board.play(7)
      board.play(9)
      expect(board.play(8)).to eq("game over, its a tie!")
    end
  end
end
