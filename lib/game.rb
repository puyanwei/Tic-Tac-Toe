class Game

  attr_accessor :players, :positions, :odd_turns

  def initialize
    @players = []
    @board = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
    @odd_turns = true
  end

  def start(player1, player2)
    @players << player1
    @players << player2
  end

  def play(position)
    @positions[position] = 'x' if @odd_turns == true
    @positions[position] = 'o' if @odd_turns == false
    @odd_turns = !@odd_turns
  end
end
