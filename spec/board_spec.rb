RSpec.describe Board do
  subject(:board) { described_class.new }
  let(:checker) { double :checker }

  describe '#initialize' do
    it 'creates an empty board' do
      expect(board.board_state).to eq([" ", " ", " ", " ", " ", " ", " ", " ", " "])
    end
  end

  describe '#add_position' do
    it 'alternates between symbols per turn and takes that position on the board' do
      board.action(4)
      board.action(5)
      board.action(1)
      expect(board.board_state).to eq(["X", " ", " ", "X", "O", " ", " ", " ", " "])
    end
  end

  describe '#taken?' do
    it 'throws an error if position is already taken' do
      board.action(1)
      expect { board.action(1) }.to raise_error("position already taken")
    end
  end

  describe "#win?" do
  #   it "sets win to true if there is a win" do
  #     allow(board).to
  #     receive(:result).with(:win?).and_return(true)
  #     expect(board.win?).to be(true)
  #   end
    it "should not be true if the game does not have 3 in a row" do
      board.action(2)
      expect(board.win?).to eq(false)
    end
  end
  # describe "#tie?" do
  #   it "sets tie to true if there is a tie" do
  #     allow(board).to receive(:result).with(:tie?).and_return(true)
  #     expect(board.tie?).to be(true)
  #   end
  # end
  it "should not be true if the game does not have 3 in a row" do
    board.action(2)
    expect(board.tie?).to eq(false)
  end
end
