require 'spec_helper'
require 'computer'

feature 'playing the game' do
  before do
    visit ('/')
    fill_in :player, with: 'Tom'
    click_button 'Submit'
  end

  scenario 'player sees rock, paper and scissors' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
  
  scenario 'player can select rock,paper or scissors' do
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock'
  end
  
  scenario 'computer selects rock, paper or scissors' do
    click_button 'Paper'
    expect(page).to have_content 'Your opponent has chosen Paper'
  end
end

feature 'getting a result' do
  before do 
    Computer.new.computer_choice
  end
    
  scenario 'player beats computer' do
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end
end