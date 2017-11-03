RSpec.describe Result do
  subject(:result) { described_class.new([]) }
  let(:checker) { double :checker }

  describe ('#initialize') do
    it 'shows a state' do
      expect(result.state).to eq([])
    end
  end

  describe '#positions_left?' do
    it 'its a tie when there are no more spaces left' do
      allow(result).to receive(:checker).and_return(true)
      expect(result.tie?).to eq(true)
    end
  end
end
