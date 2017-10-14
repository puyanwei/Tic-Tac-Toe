RSpec.describe Players do
  subject(:player) { described_class.new("fred", "bob") }

  describe '#initialize' do
    it 'adds the players names when a new game starts' do
      expect(player.player1).to eq("fred")
      expect(player.player2).to eq("bob")
    end
  end
end
