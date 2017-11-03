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
#   it 'play calls board to add a move' do
#     allow(board).to receive(:action)
#     expect(board).to receive(:action)
#     game.play(1)
#   end
    it 'throws an error if an invalid position is chosen' do
      expect { game.play(10) }.to raise_error("invalid position")
    end
    it 'throws an error if an invalid position is chosen' do
      expect { game.play(-2) }.to raise_error("invalid position")
    end
  end
  #
  # describe '#win' do
  #   it 'shows a win if the board has 3 in a row' do
  #     game.start("bob", "mike")
  #     allow(board).to receive(:action()).and_return(true)
  #     expect(game.win?).to be(true)
  #   end
  # end
end
