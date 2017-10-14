class Board

  attr_accessor :state, :odd_turns
  def initialize
    @state = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @odd_turns = true
  end

  def play(position, error = Error.new(@state))
    error.error_check(position)
    @state[position - 1] = 'X' if @odd_turns == true
    @state[position - 1] = 'O' if @odd_turns == false
    checker = Checker.new(@state)
    return "game over" if checker.check_winner
    next_turn
  end

  private
  def next_turn
    @odd_turns = !@odd_turns
  end

  def odd_turn?
    @odd_turns
  end
end
