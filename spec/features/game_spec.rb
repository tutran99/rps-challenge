require 'spec_helper'
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
end