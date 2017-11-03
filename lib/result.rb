class Result

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def win? (checker = Checker.new(@state))
    return true if checker.check_winner
  end

  def tie?
    return true if positions_left? == false
  end

  private

  def positions_left?
    @state.include?(nil)
  end

end
