RSpec.describe Checker do
  subject(:checker) { described_class.new(board_state) }
  let(:board_state) { double :board_state }

  describe "#winner?" do
    it 'checks the board to see if top row wins with O' do
      checker.board_state = ["O", "O", "O", " ", " ", " ", " ", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if middle row wins with O' do
      checker.board_state = [" ", " ", " ", "O", "O", "O", " ", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if bottom row wins with O' do
      checker.board_state = [" ", " ", " ", " ", " ", " ", "O", "O", "O"]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if left column wins with O' do
      checker.board_state = ["O", " ", " ", "O", " ", " ", "O", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if middle column wins with O' do
      checker.board_state = [" ", "O", " ", " ", "O", " ", " ", "O", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if right column wins with O' do
      checker.board_state = [" ", " ", "O", " ", " ", "O", " ", " ", "O"]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if diagonal down left to right wins with O' do
      checker.board_state = ["O", " ", " ", " ", "O", " ", " ", " ", "O"]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if diagonal up left to right wins with O' do
      checker.board_state = [" ", " ", "O", " ", "O", " ", "O", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if top row wins with X' do
      checker.board_state = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if middle row wins with X' do
      checker.board_state = [" ", " ", " ", "X", "X", "X", " ", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if bottom row wins with X' do
      checker.board_state = [" ", " ", " ", " ", " ", " ", "X", "X", "X"]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if left column wins with X' do
      checker.board_state = ["X", " ", " ", "X", " ", " ", "X", " ", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if middle column wins with X' do
      checker.board_state = [" ", "X", " ", " ", "X", " ", " ", "X", " "]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if right column wins with X' do
      checker.board_state = [" ", " ", "X", " ", " ", "X", " ", " ", "X"]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if diagonal down left to right wins with X' do
      checker.board_state = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
      expect(checker.winner?).to be(true)
    end

    it 'checks the board to see if diagonal up left to right wins with X' do
      checker.board_state = [" ", " ", "X", " ", "X", " ", "X", " ", " "]
      expect(checker.winner?).to be(true)
    end
  end

  describe '#non-winners' do
    it 'should not win 1' do
      checker.board_state = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
      expect(checker.winner?).to be(false)
    end

    it 'should not win 2' do
      checker.board_state = [" ", "O", " ", " ", " ", " ", " ", " ", " "]
      expect(checker.winner?).to be(false)
    end
  end
end
