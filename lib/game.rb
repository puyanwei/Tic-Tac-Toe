class Game

  attr_accessor :players, :board

  def initialize(board = Board.new)
    @board = board
  end

  def start(player1, player2)
    players = Players.new(player1, player2)
  end

  def play(position)
    @board.play(position)
  end
end
