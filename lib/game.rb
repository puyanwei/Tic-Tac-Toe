class Game

# should only contain the options of the game

  attr_accessor :players, :board, :odd_turns

  def initialize
    @players = []
  end

  def start(player1, player2)
    @players << player1
    @players << player2
  end

  def play(position, board = Board.new)
    board.play(position)
  end
end
