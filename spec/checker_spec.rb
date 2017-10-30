RSpec.describe Checker do
  subject(:checker) { described_class.new(state) }
  let(:state) { double :state }

  describe "#check_winner" do
    it 'checks the board to see if top row wins with O' do
      checker.state = ["O", "O", "O", nil, nil, nil, nil, nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with O' do
      checker.state = "[ ][ ][ ]\n[O][O][O]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if bottom row wins with O' do
      checker.state = "[ ][ ][ ]\n[ ][ ][ ]\n[O][O][O]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if left column wins with O' do
      checker.state = "[O][ ][ ]\n[O][ ][ ]\n[O][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle column wins with O' do
      checker.state = "[ ][O][ ]\n[ ][O][ ]\n[ ][O][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if right column wins with O' do
      checker.state = "[ ][ ][O]\n[ ][ ][O]\n[ ][ ][O]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal down left to right wins with O' do
      checker.state = "[O][ ][ ]\n[ ][O][ ]\n[ ][ ][O]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal up left to right wins with O' do
      checker.state = "[ ][ ][O]\n[ ][O][ ]\n[O][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if top row wins with X' do
      checker.state = "[X][X][X]\n[ ][ ][ ]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with X' do
      checker.state = "[ ][ ][ ]\n[X][X][X]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if bottom row wins with X' do
      checker.state = "[ ][ ][ ]\n[ ][ ][ ]\n[X][X][X]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if left column wins with X' do
      checker.state = "[X][ ][ ]\n[X][ ][ ]\n[X][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if left column wins with X' do
      checker.state = "[ ][X][ ]\n[ ][X][ ]\n[ ][X][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle column wins with X' do
      checker.state = "[ ][ ][X]\n[ ][ ][X]\n[ ][ ][X]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if right column wins with X' do
      checker.state = "[X][ ][ ]\n[ ][X][ ]\n[ ][ ][X]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal down left to right wins with X' do
      checker.state = "[X][ ][ ]\n[ ][X][ ]\n[ ][ ][X]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal up left to right wins with X' do
      checker.state = "[ ][ ][X]\n[ ][X][ ]\n[X][ ][ ]"
      expect(checker.check_winner).to be(true)
    end
  end
end
