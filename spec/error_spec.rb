# RSpec.describe Error do
#   subject(:error) { described_class.new([0]) }
#
#   describe '#taken?' do
#     it 'throws an error if position on board is already taken' do
#       error.state = ["X", "X", "X", 0]
#       expect { error.error_check(1) }.to raise_error("position already taken")
#     end
#   end
#
#   describe '#valid?' do
#     it 'throws an error if position number is not 1 to 9' do
#       expect { error.error_check(11) }.to raise_error("invalid position")
#     end
#
#     it 'throws an error if position number is not 1 to 9' do
#       expect { error.error_check(-2) }.to raise_error("invalid position")
#     end
#   end
# end
