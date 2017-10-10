RSpec.describe Game do
  subject(:game) { described_class.new }

  context '#start' do
    it 'game starts with player entries' do
      game.start("bob", "mike")
      expect(game.players).to eq(["bob", "mike"])
    end
  end
end
