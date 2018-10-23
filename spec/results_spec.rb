require 'results'

describe Result do
  subject(:result) { described_class.new }
  it 'displays the winner' do
    expect(result.view).to eq 'You win!'
  end
end