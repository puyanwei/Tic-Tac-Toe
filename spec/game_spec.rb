RSpec.describe Game do
  subject(:game) { described_class.new(board) }
  let(:board) { double :board }
  let(:win?) { double :win? }
  let(:tie?) { double :tie? }

  describe '#play' do
    it 'throws an error if an invalid position is chosen' do
      expect { game.play(10) }.to raise_error("invalid position")
    end
    it 'throws an error if an invalid position is chosen' do
      expect { game.play(-2) }.to raise_error("invalid position")
    end
  end

  describe "#win?" do
    it "sets win to true if there is a win" do
      allow(game).to receive(:win?) { true }
      expect(game.win?).to be(true)
    end
  end

  describe "#tie?" do
    it "sets tie to true if there is a tie" do
      allow(game).to receive(:tie?) { true }
      expect(game.tie?).to be(true)
    end
  end

  describe '#display_result' do
    it 'outputs a message if there is a winner' do
      allow(game).to receive(:win?) { true }
      allow(game).to receive(:tie?) { false }
      expect { game.display_result }.to output("game over, you win\n").to_stdout
    end

    it 'outputs a message you if the game is tied' do
      allow(game).to receive(:win?) { false }
      allow(game).to receive(:tie?) { true }
      expect { game.display_result }.to output("game over, its a tie\n").to_stdout
    end
  end
end
