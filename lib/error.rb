class Error

  attr_accessor :state

  def initialize(state)
    @state = state
  end

  def error_check(position)
    raise "invalid position" if valid?(position)
    raise "position already taken" unless taken?(position)
  end

  def taken?(position)
    @state[position - 1].zero?
  end

  def valid?(position)
    position < 1 or position > 9
  end
end
