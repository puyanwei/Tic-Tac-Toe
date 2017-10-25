RSpec.describe Checker do
  subject(:checker) { described_class.new(state) }
  let(:state) { double :state }

  describe "#check_winner" do
    it 'checks the board to see if top row wins with O' do
      checker.state = "[O][O][O]\n[ ][ ][ ]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with O' do
      checker.state = "[ ][ ][ ]\n[O][O][O]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

#     it 'checks the board to see if bottom row wins with O' do
#       checker.state = [0, 0, 0, 0, 0, 0, "O", "O", "O"]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if left column wins with O' do
#       checker.state = ["O", 0, 0, "O", 0, 0, "O", 0, 0]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if middle column wins with O' do
#       checker.state = [0, "O", 0, 0, "O", 0, 0, "O", 0]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if right column wins with O' do
#       checker.state = [0, 0, "O", 0, 0, "O", 0, 0, "O"]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if diagonal down left to right wins with O' do
#       checker.state = ["O", 0, 0, 0, "O", 0, 0, 0, "O"]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if diagonal up left to right wins with O' do
#       checker.state = [0, 0, "O", 0, "O", 0, "O", 0, 0]
#       expect(checker.check_winner).to be(true)
#     end
#
    it 'checks the board to see if top row wins with X' do
      checker.state = "[X][X][X]\n[ ][ ][ ]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end

    it 'checks the board to see if middle row wins with X' do
      checker.state = "[ ][ ][ ]\n[X][X][X]\n[ ][ ][ ]"
      expect(checker.check_winner).to be(true)
    end
#
#     it 'checks the board to see if bottom row wins with X' do
#       checker.state = [0, 0, 0, 0, 0, 0, "X", "X", "X"]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if left column wins with X' do
#       checker.state = ["X", 0, 0, "X", 0, 0, "X", 0, 0]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if left column wins with X' do
#       checker.state = ["X", 0, 0, "X", 0, 0, "X", 0, 0]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if middle column wins with X' do
#       checker.state = [0, "X", 0, 0, "X", 0, 0, "X", 0]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if right column wins with X' do
#       checker.state = [0, 0, "X", 0, 0, "X", 0, 0, "X"]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if diagonal down left to right wins with X' do
#       checker.state = ["X", 0, 0, 0, "X", 0, 0, 0, "X"]
#       expect(checker.check_winner).to be(true)
#     end
#
#     it 'checks the board to see if diagonal up left to right wins with X' do
#       checker.state = [0, 0, "X", 0, "X", 0, "X", 0, 0]
#       expect(checker.check_winner).to be(true)
#     end
  end
end
