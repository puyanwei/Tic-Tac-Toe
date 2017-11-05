class Checker

  attr_accessor :board_state

  def initialize(board_state)
    @board_state = board_state
    @win_positions = [0, 1, 2, 3, 4, 5, 6, 7, 8, 0, 3, 6, 1, 4, 7, 2, 5, 8, 0, 4, 8, 2, 4, 6]
  end

  def check_winner
    @win_positions.each_slice(3) do |arr|
      transpose_positions(arr)
      return true if three_in_a_row?
    end
  end

  private

  def transpose_positions(arr)
    return false if position_empty? arr
    @first = @board_state[arr[0]]
    @second = @board_state[arr[1]]
    @third = @board_state[arr[2]]
  end

  def three_in_a_row?
    @first == @second && @first == @third
  end

  def position_empty?(arr)
    arr.include?(" ")
  end
end
