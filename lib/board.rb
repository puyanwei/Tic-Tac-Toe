class Board

  attr_accessor :board_state, :odd_turns, :win, :tie

  def initialize
    @board_state = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    @odd_turns = true
  end

  def action(position)
    @position = position
    add_position
    next_turn
    result
    show_board
  end

  def add_position
    raise "position already taken" if position_taken?
    @board_state[@position - 1] = "X" if @odd_turns
    @board_state[@position - 1] = "O" unless @odd_turns
  end

  def next_turn
    @odd_turns = !@odd_turns
  end

  def win?
    @win = true if result.win?
  end

  def tie?
    @tie = true if result.tie?
  end

  private

  def position_taken?
    @board_state[@position - 1] != " "
  end

  def show_board
    display = Display.new(@board_state)
    display.formatter
  end

  def result
    Result.new(@board_state)
  end
end
