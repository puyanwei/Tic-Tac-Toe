RSpec.describe Game do
  subject(:game) { described_class.new }

  describe "Plays a game" do
    it "Makes player 1 the winner" do
      game.start("player1", "player2")
      game.move(3)
      game.move(4)
      game.move(6)
      game.move(1)
      game.move(9)
      expect(game.winner).to output("player 1 is the winner").to_stdout
    end
  end
end
