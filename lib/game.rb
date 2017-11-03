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
    raise "invalid position" if invalid_position?(position)
    @board.action(position)
  end

  def win?
    board.win
  end

  def tie?
    board.tie
  end

  private

  def invalid_position?(position)
    return true if position > 9 || position < 1
  end
end
