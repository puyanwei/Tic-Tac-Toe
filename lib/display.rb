class Display

  attr_accessor :state, :turn

  def initialize(state, turn)
    @state = state
    @turn = turn
  end

  def show
    if @turn == 1
      board = @state.insert(9, "\n")
      board = @state.insert(19, "\n")
    end
    puts board
  end
end
