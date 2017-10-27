class Checker

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def check_winner
    top_row? || middle_row? || bottom_row? || left_col? || middle_col? || right_col? || diag_down? || diag_up?
  end

  def top_row?
    @state[1] == "O" && @state[4] == "O" && @state[7] == "O" || @state[1] == "X" && @state[4] == "X" && @state[7] == "X"
  end

  def middle_row?
    @state[10] == "O" && @state[13] == "O" && @state[16] == "O" || @state[10] == "X" && @state[13] == "X" && @state[16] == "X"
  end

  def bottom_row?
    @state[19] == "O" && @state[22] == "O" && @state[25] == "O" || @state[19] == "X" && @state[22] == "X" && @state[25] == "X"
  end

  def left_col?
    @state[1] == "O" && @state[10] == "O" && @state[19] == "O" || @state[1] == "X" && @state[10] == "X" && @state[19] == "X"
  end

  def middle_col?
    @state[4] == "O" && @state[13] == "O" && @state[22] == "O" || @state[4] == "X" && @state[13] == "X" && @state[22] == "X"
  end

  def right_col?
    @state[7] == "O" && @state[16] == "O" && @state[25] == "O" || @state[7] == "X" && @state[16] == "X" && @state[25] == "X"
  end

  def diag_down?
    @state[1] == "O" && @state[13] == "O" && @state[25] == "O" || @state[1] == "X" && @state[13] == "X" && @state[25] == "X"
  end

  def diag_up?
    @state[7] == "O" && @state[13] == "O" && @state[19] == "O" || @state[7] == "X" && @state[13] == "X" && @state[19] == "X"
  end
end
