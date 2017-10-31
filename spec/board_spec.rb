RSpec.describe Board do
  subject(:board) { described_class.new }
  let(:checker) { double :checker }

  describe '#initialize' do
    it 'creates an empty board' do
      expect(board.state).to eq([nil, nil, nil, nil, nil, nil, nil, nil, nil])
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
      expect(board.state).to eq(["X", nil, nil, "X", "O", nil, nil, nil, nil])
    end
  end

  describe '#positions_left?' do
    it 'returns "game over, its a tie!" when there are no more spaces left' do
      board.action(1)
      board.action(2)
      board.action(5)
      board.action(3)
      board.action(6)
      board.action(4)
      board.action(7)
      board.action(9)
      expect(board.action(8)).to eq("game over, its a tie!")
    end
  end

  describe '#taken?' do
    it 'throws an error if position is already taken' do
      board.action(1)
      expect { board.action(1) }.to raise_error("position already taken")
    end
  end
end
