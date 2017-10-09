RSpec.describe Game do
  subject(:game) { described_class.new }

  describe "Plays a game" do
    it "Makes player 1 the winner" do
      game.start("player1", "player2")
      game.play(3)
      game.play(4)
      game.play(6)
      game.play(1)
      game.play(9)
      expect(game.winner).to output("player 1 is the winner").to_stdout
    end
  end
end
