RSpec.describe Game do
  subject(:game) { described_class.new(board) }
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
    it 'play calls board to add a move' do
      allow(board).to receive(:play)
      expect(board).to receive(:play) #its expected
      game.play(1) #game.play works and errors cannot be because of class Board since its doubled
    end
  end

  context '#add_players' do
    it 'game starts with two player entries' do
      expect(game.players).to eq(["bob", "mike"])
    end
  end

  context '#game_empty?' do
    it 'raises an error if game has already started' do
      expect{game.start("john", "rob")}.to raise_error("game currently active")
    end
  end
end
