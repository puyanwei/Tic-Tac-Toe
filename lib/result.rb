class Result

attr_accessor :state

def intialize(state)
  @state = state
end

  def game_result
    return "game over, you win" if win? (Checker.new(@state))
    return "game over, its a tie!" if tie?
  end

  def win? (checker)
    return true if checker.check_winner
  end

  def tie?
    return true if positions_left? == false
  end

end
