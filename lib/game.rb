class Game

attr_accessor :players

  def initialize
    @players = []
  end

  def start (player1, player2)
    @players << player1
    @players << player2
  end

end
