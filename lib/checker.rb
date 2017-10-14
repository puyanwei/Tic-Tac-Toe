class Checker

  attr_accessor :state

  def initialize(state)
    @state = state
    @ohs = ["O", "O", "O"]
    @exes = ["X", "X", "X"]
  end

  def check_winner
    top_row? || middle_row? || bottom_row?
  end

  def top_row?
    @state[0..2] == @ohs || @state[0..2] == @exes
  end

  def middle_row?
    @state[3..5] == @ohs || @state[3..5] == @exes
  end

  def bottom_row?
    @state[6..8] == @ohs || @state[6..8] == @exes
  end
end

# what are wins?
# across 123, 456, 789,
# downs 147, 258, 369
# diagonals 159, 357
