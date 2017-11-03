class Checker

  attr_accessor :state, :first, :second, :third

  def initialize(state)
    @state = state
    # @top = [0,1,2]
    # @middle_row = [3,4,5]
    # @bottom = [6,7,8]
    # @left = [0,3,6]
    # @middle_col = [1,4,7]
    # @right = [2,5,8]
    # @diagonal_down = [0,4,8]
    # @diagonal_up = [2,4,6]
  end

  def check_winner
    three_in_a_row?(0, 1, 2) || three_in_a_row?(3, 4, 5) || three_in_a_row?(6, 7, 8) || three_in_a_row?(0, 3, 6) || three_in_a_row?(1, 4, 7) || three_in_a_row?(2, 5, 8) || three_in_a_row?(0, 4, 8) || three_in_a_row?(6, 4, 2)
  end

  private

  def three_in_a_row?(first, second, third)
    @first = @state[first]
    @second = @state[second]
    @third = @state[third]
    return if blank?
    same?
  end

  def same?
    @first == @second && @first == @third
  end

  def blank?
    [@first, @second, @third].include? nil
  end
end
