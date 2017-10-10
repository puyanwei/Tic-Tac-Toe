class Game

  attr_accessor :players, :board, :odd_turns

  def initialize
    @players = []
    @board = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @odd_turns = true
  end

  def start(player1, player2)
    @players << player1
    @players << player2
  end

  def play(position)
    raise "position already taken" unless taken?(position)
    @board[position] = 'x' if @odd_turns == true
    @board[position] = 'o' if @odd_turns == false
    @odd_turns = !@odd_turns
  end

  private

  def taken?(position)
    @board[position] == 0
  end
end
