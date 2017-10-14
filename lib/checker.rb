class Checker

  attr_accessor :state

  def initialize(state)
    @state = state
    @ohs = ["O", "O", "O"]
    @exes = ["X", "X", "X"]
  end

  def check_winner
    top_row? || middle_row? || bottom_row? || left_col? || middle_col? || right_col? || diag_down? || diag_up?

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

  def left_col?
    @ohs == [@state[0], @state[3], @state[6]] || @exes == [@state[0], @state[3], @state[6]]
  end

  def middle_col?
    @ohs == [@state[1], @state[4], @state[7]] || @exes == [@state[1], @state[4], @state[7]]
  end

  def right_col?
    @ohs == [@state[2], @state[5], @state[8]] || @exes == [@state[2], @state[5], @state[8]]
  end

  def diag_down?
    @ohs == [@state[0], @state[4], @state[8]] || @exes == [@state[0], @state[4], @state[8]]
  end

  def diag_up?
    @ohs == [@state[2], @state[4], @state[6]] || @exes == [@state[2], @state[4], @state[6]]
  end
end
