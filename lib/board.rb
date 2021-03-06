class Board

  attr_accessor :board_state, :odd_turns

  def initialize
    @board_state = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @odd_turns = true
  end

  def action(position)
    add_position(position)
    next_turn
    result
    show_board
  end

  def add_position(position)
    error_check(position)
    board_state[position - 1] = "X" if odd_turns
    board_state[position - 1] = "O" unless odd_turns
  end

  def next_turn
    @odd_turns = !odd_turns
  end

  def win?
    result.win?
  end

  def tie?
    result.tie?
  end

  private

  def error_check(position)
    raise "invalid position" if invalid_position?(position)
    raise "position already taken" if position_taken?(position)
  end

  def position_taken?(position)
    board_state[position - 1] != " "
  end

  def invalid_position?(position)
    return true if position > 9 || position < 1
  end

  def show_board
    display = Display.new(board_state)
    display.formatter
  end

  def result
    Result.new(board_state)
  end
end
