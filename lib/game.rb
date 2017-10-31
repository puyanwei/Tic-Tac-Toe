class Game

  attr_accessor :board, :player1, :player2

  def initialize(board = Board.new)
    @board = board
    @player1 = player1
    @player2 = player2
  end

  def start(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play(position)
    @board.action(position)
  end
end
