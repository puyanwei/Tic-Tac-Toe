class Board

  attr_accessor :state, :odd_turns, :turns
  def initialize
    @state = "[ ][ ][ ][ ][ ][ ][ ][ ][ ]"
    @odd_turns =
    @turn = 0
  end

  def add_position(position)
    calculate_position(position)
    return result(checker = Checker.new(@state))
    @turn += 1
  end

  private

  def calculate_position(position)
    num = (position - 1) * 2
    @state[num + position] = "X" if @odd_turns
    @state[num + position] = "O" unless @odd_turns
    display = Display.new(@state, @turn)
    display.show
    next_turn
  end

  def next_turn
    @odd_turns = !@odd_turns
  end

  def result(checker)
    return "game over, you win" if checker.check_winner
    return "game over, its a tie!" unless positions_left?
  end

  def positions_left?
    @state.include?(" ")
  end
end
