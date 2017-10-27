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
    @state[11] == "O" && @state[14] == "O" && @state[17] == "O" || @state[11] == "X" && @state[14] == "X" && @state[17] == "X"
  end

  def bottom_row?
    @state[21] == "O" && @state[24] == "O" && @state[27] == "O" || @state[21] == "X" && @state[24] == "X" && @state[27] == "X"
  end

  def left_col?
    @state[1] == "O" && @state[11] == "O" && @state[21] == "O" || @state[1] == "X" && @state[11] == "X" && @state[21] == "X"
  end

  def middle_col?
    @state[4] == "O" && @state[14] == "O" && @state[24] == "O" || @state[4] == "X" && @state[14] == "X" && @state[24] == "X"
  end

  def right_col?
    @state[7] == "O" && @state[17] == "O" && @state[27] == "O" || @state[7] == "X" && @state[17] == "X" && @state[27] == "X"
  end

  def diag_down?
    @state[1] == "O" && @state[14] == "O" && @state[27] == "O" || @state[1] == "X" && @state[14] == "X" && @state[27] == "X"
  end

  def diag_up?
    @state[7] == "O" && @state[14] == "O" && @state[21] == "O" || @state[7] == "X" && @state[14] == "X" && @state[21] == "X"
  end
end
