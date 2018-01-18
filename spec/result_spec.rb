RSpec.describe Result do
  subject(:result) { described_class.new(state) }
  let(:state) { double :state }
  let(:checker) { double :checker }

  describe '#initialize' do
    it 'shows a state' do
      allow(result).to receive(:state) { ["X", "X", "O", "O", "X", "X", "O", "X", "X"] }
      expect(result.state).to eq(["X", "X", "O", "O", "X", "X", "O", "X", "X"])
    end
  end

  describe '#win?' do
    it 'sets win to true if there is a win' do
      allow(result).to receive(:win?) { true }
      allow(checker).to receive(:winner?) { true }
      expect(result.win?).to eq(true)
    end
  end

  describe '#positions_left?' do
    it 'its a tie when there are no more spaces left' do
      result.state = ["X", "X", "O", "O", "X", "X", "O", "X", "X"]
      expect(result.tie?).to eq(true)
    end
  end
end
