RSpec.describe Game do
  subject(:game) { described_class.new(board) }
  let(:board) { double :board }
  let(:players) { double :players }

  # describe '#start' do
  #   it 'adds players to the game' do
  #     allow(game).to receive(:players)
  #     expect(game).to receive(:players).with("bob", "mike")
  #     game.start("bob", "mike")
  #   end
  # end

  describe '#play' do
    it 'play calls board to add a move' do
      allow(board).to receive(:add_position)
      expect(board).to receive(:add_position)
      game.play(1)
    end
  end
end
