class Board

  attr_accessor :state, :odd_turns, :first
  def initialize
    @state = Array.new(9)
    @odd_turns = true
  end

  def add_position(position)
    calculate_position(position)
    return result(Checker.new(@state))
  end

  private

  def calculate_position(position)
    raise "position already taken" if @state[position - 1] != nil
    @state[position - 1] = "X" if @odd_turns
    @state[position - 1] = "O" unless @odd_turns
    next_turn
    show
  end

  def next_turn
    @odd_turns = !@odd_turns
  end

  def result(checker)
    return "game over, you win" if checker.check_winner
    return "game over, its a tie!" unless positions_left?
  end

  def positions_left?
    @state.include?(nil)
  end

  def show
    board = ""
    @state.each do |position|
      board << "[#{position}]" if position != nil
      board << "[ ]" if position.nil?
    end
    board.insert(9, "\n")
    board.insert(19, "\n")
    puts board.insert(29, "\n")
  end
end
