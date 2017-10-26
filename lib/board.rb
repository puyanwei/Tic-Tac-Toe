class Board

  attr_accessor :state, :odd_turns, :turns
  def initialize
    @state = "[ ][ ][ ][ ][ ][ ][ ][ ][ ]"
    @odd_turns = true
  end

  def add_position(position)
    calculate_position(position, display = Display.new)
    return result(checker = Checker.new(@state))
  end

  private

  def calculate_position(position, display)
    num = (position - 1) * 2
    @state[num + position] = "X" if @odd_turns
    @state[num + position] = "O" unless @odd_turns
    next_turn
    display.show(@state)
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
