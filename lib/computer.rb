class Computer
CHOICES = [:Rock, :Paper, :Scissors]

  def computer_choice
    CHOICES.sample
  end
end