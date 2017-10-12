RSpec.describe Board do
  subject(:board) { described_class.new }

  context '#initialize' do
    it 'creates an empty board' do
      expect(board.state).to eq([0, 0, 0, 0, 0, 0, 0, 0, 0])
    end
  end

  context '#alternate' do
    it 'alternates between symbols per turn and takes that position on the board' do
      board.play(4)
      board.play(5)
      board.play(1)
      expect(game.state[4]).to eq('x')
      expect(game.state[5]).to eq('o')
      expect(game.state[1]).to eq('x')
      expect(game.state[9]).to eq(nil)
    end
  end

  context '#error' do
    it 'throws an error if position on board is already taken' do
      board.play(1)
      expect { board.play(1) }.to raise_error("position already taken")
    end
  end
end
