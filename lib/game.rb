class Game

  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
  end

  def play(position)
    raise "invalid position" if invalid_position?(position)
    @board.action(position)
    display_result
  end

  def win?
    board.win?
  end

  def tie?
    board.tie?
  end

  def display_result
    puts "game over, you win" if win?
    puts "game over, its a tie" if tie?
  end

  def invalid_position?(position)
    return true if position > 9 || position < 1
  end
end
