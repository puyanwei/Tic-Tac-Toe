class Display

  attr_accessor :state, :board

  def initialize(state)
    @state = state
    @board = ""
  end

  def formatter
    @state.each do |position|
      @board << "[ ]" if position == " "
      @board << "[#{position}]" unless position == " "
    end
    @board.insert(9, "\n") && @board.insert(19, "\n")
    puts @board.insert(29, "\n")
  end
end
