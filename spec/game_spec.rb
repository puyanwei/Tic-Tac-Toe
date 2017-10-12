RSpec.describe Game do
  subject(:game) { described_class.new }
  let(:board) {double :board}

  before(:each) do
    game.start("bob", "mike")
  end

  context '#start' do
    it 'game starts with two player entries' do
      expect(game.players).to eq(["bob", "mike"])
    end
  end

  context '#play' do
    it 'play creates a new instance of board' do
      allow(board).to receive(:play)
      expect(board).to receive(:play)
      game.play(1, board)
    end
  end
end
