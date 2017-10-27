RSpec.describe Display do
  subject(:display) { described_class.new("state", 1) }

  describe '#show' do
    it 'shows the board in a 3 by 3 grid' do
      display.state = "[X][ ][ ][X][O][ ][ ][ ][ ]"
      expect { display.show }.to output("[X][ ][ ]\n[X][O][ ]\n[ ][ ][ ]\n").to_stdout
    end
  end
end
