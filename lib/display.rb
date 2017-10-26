class Display

attr_accessor :state

  def initialize
    @state = state
  end

  def show(state)
   board = @state.insert(9, "\n") && @state.insert(19, "\n")
   puts board
  end
end
