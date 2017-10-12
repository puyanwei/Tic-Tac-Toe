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

  
end
