class Game

  attr_accessor :board, :turn

  def initialize(board = Board.new)
    @board = board
  end

  def start(player1, player2)
    Players.new(player1, player2)
  end

  def play(position)
    @board.add_position(position)
  end
end
