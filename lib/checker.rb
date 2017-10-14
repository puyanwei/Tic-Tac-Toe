class Checker

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def check_win
    @state[0..2].uniq.length == 1
  end
end


# what are wins?
# across 123, 456, 789,
# downs 147, 258, 369
# diagonals 159, 357
