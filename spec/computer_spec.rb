require 'computer'

  describe Computer do
  subject(:computer) { described_class.new }
    it 'chooses rock, paper or scissors' do
      expect(computer.computer_choice).to eq(:Rock).or eq(:Paper).or eq(:Scissors)
  end
 end