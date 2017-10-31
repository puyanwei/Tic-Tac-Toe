class Board

  attr_accessor :state, :odd_turns, :first
  def initialize
    @state = Array.new(9)
    @odd_turns = true
  end

  def action(position)
    add_position(position)
    next_turn
    result(Checker.new(@state))
  end

  def add_position(position)
    raise "position already taken" if position_taken?(position)
    @state[position - 1] = "X" if @odd_turns
    @state[position - 1] = "O" unless @odd_turns
  end

  def next_turn
    @odd_turns = !@odd_turns
  end

  private

  def result(checker)
    return "game over, you win" if checker.check_winner
    return "game over, its a tie!" unless positions_left?
  end

  def positions_left?
    @state.include?(nil)
  end

  def position_taken?(position)
    @state[position - 1] != nil
  end

  def show
    display = Display.new(@state)
    display.formatter
  end
end
