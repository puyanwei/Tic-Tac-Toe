RSpec.describe Display do
  subject(:display) { described_class.new([" "]) }

  describe '#formatter' do
    it 'formats the array into a 3 by 3 board output' do
      display.state = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
      expect { display.formatter }.to output("[X][ ][ ]\n[ ][X][ ]\n[ ][ ][X]\n").to_stdout
    end
  end
end
