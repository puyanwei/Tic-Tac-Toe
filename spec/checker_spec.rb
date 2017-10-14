RSpec.describe Checker do
  subject(:checker) { described_class.new(1) }
  # let (:state) { double :state }

  describe "#check_winner" do
    it 'checks the board to see if top row wins with O' do
      checker.state = ["O", "O", "O", 0, 0, 0, 0, 0, 0]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with O' do
      checker.state = [0, 0, 0, "O", "O", "O", 0, 0, 0]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if bottom row wins with O' do
      checker.state = [0, 0, 0, 0, 0, 0, "O", "O", "O"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if top row wins with X' do
      checker.state = ["X", "X", "X", 0, 0, 0, 0, 0, 0]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with X' do
      checker.state = [0, 0, 0, "X", "X", "X", 0, 0, 0]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if bottom row wins with X' do
      checker.state = [0, 0, 0, 0, 0, 0, "X", "X", "X"]
      expect(checker.check_winner).to be(true)
    end
  end
end
