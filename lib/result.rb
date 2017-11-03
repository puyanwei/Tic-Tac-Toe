class Result

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def display_result (checker = Checker.new(@state))
    return "game over, you win" if win?
    return "game over, its a tie!" if tie?
  end

  def win? (checker)
    return true if checker.check_winner
  end

  def tie?
    return true if positions_left? == false
  end

  def positions_left?
    @state.include?(nil)
  end

end
