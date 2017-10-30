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
    it 'play calls board to add a move' do
      allow(board).to receive(:add_position)
      expect(board).to receive(:add_position)
      game.play(1)
    end
  end
end
