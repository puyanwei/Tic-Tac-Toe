class Board

  attr_accessor :state, :odd_turns
  def initialize
    @state = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @odd_turns = true
  end

  def play(position)
    raise "invalid position" if valid?(position)
    raise "position already taken" unless taken?(position)
    @state[position - 1] = 'X' if @odd_turns == true
    @state[position - 1] = 'O' if @odd_turns == false
    checker = Checker.new(@state)
    checker.check_winner
    next_turn
    p @state
  end

  private
  def next_turn
    @odd_turns = !@odd_turns
  end

  def odd_turn?
    @odd_turns
  end

  def taken?(position)
    @state[position - 1] == 0
  end

  def valid?(position)
    position < 1 or position > 9
  end
end
