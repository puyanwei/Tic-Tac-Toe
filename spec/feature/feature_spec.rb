RSpec.describe Game do
  subject(:game) { described_class.new }

  describe "Plays a game" do
    it "Makes player 1 the winner" do
      game.start("player1", "player2")
      game.play(3)
      game.play(4)
      game.play(6)
      game.play(1)
      expect(game.play(9)).to eq("game over")
    end
  end
end
