class Display

  attr_accessor :board_state

  def initialize(board_state)
    @board_state = board_state
  end

  def formatter
    display_board = ""
    @board_state.each do |position|
      display_board << "[ ]" if position == " "
      display_board << "[#{position}]" unless position == " "
    end
    display_board.insert(9, "\n") && display_board.insert(19, "\n")
    puts display_board.insert(29, "\n")
  end
end
