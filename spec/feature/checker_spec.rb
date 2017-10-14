RSpec.describe Checker do
  subject(:checker) { described_class.new(state) }
  let (:state) {double :state}

  describe "#check_winner" do
    it 'checks the board to see if there is a win' do
      checker.state = ["O", "O", "O", "X", 0, "X", "X", 0, 0]
      expect(checker.check_win
).to be(true)
    end
  end
end
