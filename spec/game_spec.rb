RSpec.describe Game do
  subject(:game) { described_class.new }

  before(:each) do
    game.start("bob", "mike")
  end

  context '#start' do
    it 'game starts with player entries' do
      expect(game.players).to eq(["bob", "mike"])
    end
  end

  context '#alternate' do
    it 'alternates between symbols per turn and takes that position on the board' do
      game.play(4)
      game.play(5)
      game.play(1)
      expect(game.board[4]).to eq('x')
      expect(game.board[5]).to eq('o')
      expect(game.board[1]).to eq('x')
      expect(game.board[9]).to eq(nil)
    end
  end
end
