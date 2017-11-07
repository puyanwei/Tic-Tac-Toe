class Board

  attr_accessor :board_state, :odd_turns, :position

  def initialize
    @board_state = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @odd_turns = true
  end

  def action(position)
    @position = position - 1
    add_position
    next_turn
    result
    show_board
  end

  def add_position
    raise "position already taken" if position_taken?
    @board_state[@position] = "X" if @odd_turns
    @board_state[@position] = "O" unless @odd_turns
  end

  def next_turn
    @odd_turns = !@odd_turns
  end

  def win?
    result.win?
  end

  def tie?
    result.tie?
  end

  private

  def position_taken?
    @board_state[@position] != " "
  end

  def show_board
    display = Display.new(@board_state)
    display.formatter
  end

  def result
    Result.new(@board_state)
  end
end
