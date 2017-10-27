class Board

  attr_accessor :state, :odd_turns, :first
  def initialize
    @state = "[ ][ ][ ]\n[ ][ ][ ]\n[ ][ ][ ]"
    @odd_turns = true
  end

  def add_position(position)
    calculate_position(position)
    return result(checker = Checker.new(@state))
  end

  private

  def calculate_position(position)
    num = (position - 1) * 2
    if position > 0 && position < 4
      @state[num + position] = "X" if @odd_turns
      @state[num + position] = "O" unless @odd_turns
    end
    if position > 3 && position < 7
      @state[num + position + 1] = "X" if @odd_turns
      @state[num + position + 1] = "O" unless @odd_turns
    end
    if position > 6 && position < 10
      @state[num + position + 2] = "X" if @odd_turns
      @state[num + position + 2] = "O" unless @odd_turns
    end
    next_turn
    puts @state
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
