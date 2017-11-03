class Board

  attr_accessor :state, :odd_turns

  def initialize
    @state = Array.new(9)
    @odd_turns = true
  end

  def action(position)
    add_position(position)
    next_turn
    show_result
    show_board
  end

  def add_position(position)
    raise "position already taken" if position_taken?(position)
    @state[position - 1] = "X" if @odd_turns
    @state[position - 1] = "O" unless @odd_turns
  end

  def next_turn
    @odd_turns = !@odd_turns
  end

  private

  def position_taken?(position)
    @state[position - 1] != nil
  end

  def show_board
    display = Display.new(@state)
    display.formatter
  end

  def show_result
    result = Result.new(@state)
    result.display_result
  end
end
