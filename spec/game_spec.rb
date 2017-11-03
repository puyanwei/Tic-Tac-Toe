RSpec.describe Game do
  subject(:game) { described_class.new(board) }
  let(:board) { double :board }

  describe '#start' do
    it 'adds players to the game' do
      game.start("bob", "mike")
      expect(game.player1 = "bob")
      expect(game.player1 = "mike")
    end
  end

  describe '#play' do
    it 'throws an error if an invalid position is chosen' do
      expect { game.play(10) }.to raise_error("invalid position")
    end
    it 'throws an error if an invalid position is chosen' do
      expect { game.play(-2) }.to raise_error("invalid position")
    end
  end
end
