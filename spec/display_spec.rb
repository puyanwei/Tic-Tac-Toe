RSpec.describe Display do
  subject(:display) { described_class.new }

  describe '#show' do
    it 'shows the board in a 3 by 3 grid' do
      display.state = "[X][ ][ ][X][O][ ][ ][ ][ ]"
      expect{display.show(display.state)}.to output("[X][ ][ ]\n[X][O][ ]\n[ ][ ][ ]\n").to_stdout
    end
  end
end
