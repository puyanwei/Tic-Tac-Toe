RSpec.describe Game do
  subject(:game) { described_class.new }

  describe "Feature Test 1 -" do
    it "Makes player 1 the winner" do
      game.play(3)
      game.play(4)
      game.play(6)
      game.play(1)
      game.play(9)
      expect(game.win?).to eq(true)
    end
  end

  describe "Feature Test 2 -" do
    it "Makes the game a tie" do
      game.play(1)
      game.play(2)
      game.play(5)
      game.play(3)
      game.play(6)
      game.play(4)
      game.play(7)
      game.play(9)
      game.play(8)
      expect(game.tie?).to eq(true)
    end
  end
end
