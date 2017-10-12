class Board

  attr_accessor :state, :odd_turns
  def initialize
    @state = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    @odd_turns = true
  end

  def play(position)
  raise "position already taken" unless taken?(position)
  @state[position - 1] = 'x' if @odd_turns == true
  @state[position - 1] = 'o' if @odd_turns == false
  @odd_turns = !@odd_turns
  p @state
  end

  private

  def taken?(position)
      @state[position - 1] == 0
  end
end
