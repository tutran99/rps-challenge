require 'computer'

  describe Computer do
    it 'chooses rock, paper or scissors' do
      expect(subject.computer_choice).to eq(:Rock).or eq(:Paper).or eq(:Scissors)
  end
 end