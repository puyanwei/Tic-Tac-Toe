class Result

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def win?(checker = Checker.new(@state))
    checker.check_winner
  end

  def tie?
    positions_left? == false
  end

  def positions_left?
    @state.include?(nil)
  end
end
