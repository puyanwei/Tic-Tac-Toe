RSpec.describe Checker do
  subject(:checker) { described_class.new(state) }
  let(:state) { double :state }

  describe "#check_winner" do
    it 'checks the board to see if top row wins with X' do
      checker.state = ["X", "X", "X", nil, nil, nil, nil, nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with X' do
      checker.state = [nil, nil, nil, "X", "X", "X", nil, nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if bottom row wins with X' do
      checker.state = [nil, nil, nil, nil, nil, nil, "X", "X", "X"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if left column wins with X' do
      checker.state = ["X", nil, nil, "X", nil, nil, "X", nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle column wins with X' do
      checker.state = [nil, "X", nil, nil, "X", nil, nil, "X", nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if right column wins with X' do
      checker.state = [nil, nil, "X", nil, nil, "X", nil, nil, "X"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal down left to right wins with X' do
      checker.state = ["X", nil, nil, nil, "X", nil, nil, nil, "X"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal up left to right wins with X' do
      checker.state = [nil, nil, "X", nil, "X", nil, "X", nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if top row wins with X' do
      checker.state = ["X", "X", "X", nil, nil, nil, nil, nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with X' do
      checker.state = [nil, nil, nil, "X", "X", "X", nil, nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if bottom row wins with X' do
      checker.state = [nil, nil, nil, nil, nil, nil, "X", "X", "X"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if left column wins with X' do
      checker.state = ["X", nil, nil, "X", nil, nil, "X", nil, nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle column wins with X' do
      checker.state = [nil, "X", nil, nil, "X", nil, nil, "X", nil]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if right column wins with X' do
      checker.state = [nil, nil, "X", nil, nil, "X", nil, nil, "X"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal down left to right wins with X' do
      checker.state = ["X", nil, nil, nil, "X", nil, nil, nil, "X"]
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if diagonal up left to right wins with X' do
      checker.state = [nil, nil, "X", nil, "X", nil, "X", nil, nil]
      expect(checker.check_winner).to be(true)
    end
  end
end
