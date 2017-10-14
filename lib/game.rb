class Game

  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
  end

  def start(player1, player2)
    Players.new(player1, player2)
  end

  def play(position)
    @board.play(position)
  end
end
