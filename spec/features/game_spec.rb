require 'spec_helper'
feature 'playing the game' do
  before do
    visit ('/')
    fill_in :player, with: 'Tom'
    click_button 'Submit'
end
  scenario 'player sees rock, paper and scissors' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end