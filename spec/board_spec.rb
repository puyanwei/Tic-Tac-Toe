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

  describe '#error' do
    it 'throws an error if position on board is already taken' do
      board.play(1)
      expect { board.play(1) }.to raise_error("position already taken")
    end

    it 'throws an error if position number is not 1 to 9' do
      expect { board.play(11) }.to raise_error("invalid position")
    end
  end
end
