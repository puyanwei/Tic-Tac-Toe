class Checker

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def check_winner
    three_in_a_row?(0, 1, 2) || three_in_a_row?(3, 4, 5) || three_in_a_row?(6, 7, 8) || three_in_a_row?(0, 3, 6) || three_in_a_row?(1, 4, 7) || three_in_a_row?(2, 5, 8) || three_in_a_row?(0, 4, 8) || three_in_a_row?(6, 4, 2)
  end

  private

  def three_in_a_row?(first, second, third)
    return if blank?(first, second, third)

    "#{@state[first]}" == "#{@state[second]}" && "#{@state[first]}" == "#{@state[third]}"
  end

  def blank?(first, second, third)
    [@state[first] || @state[second] || @state[third]].include? nil
  end
end
