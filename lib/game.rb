class Game

  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
  end

  def play(position)
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
end
