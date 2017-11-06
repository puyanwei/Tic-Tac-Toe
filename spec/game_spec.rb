RSpec.describe Game do
  subject(:game) { described_class.new(Board.new) }
  # let(:board) { double :board }

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

  describe "#win?" do
  #   it "sets win to true if there is a win" do
  #     allow(board).to receive(:result).with(:win?).and_return(true)
  #     expect(board.win?).to be(true)
  #   end
    it "should be not be true if there is not 3 in a row" do
      game.start("bob", "fred")
      expect(game.win?).to eq(false)
    end
  end
end
