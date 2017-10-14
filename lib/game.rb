class Game

# should only contain the options of the game

  attr_accessor :players, :board

  def initialize(board = Board.new) # board here instead of in method is better for doubling purposes
    @players = []
    @board = board
  end

  def start(player1, player2)
    raise "game currently active" if any_players? == false
    add_players(player1, player2)
  end

  def play(position)
    @board.play(position)
  end

  private

  def add_players(player1, player2)
    @players << player1
    @players << player2
  end

  def any_players?
    @players.empty?
  end
end
