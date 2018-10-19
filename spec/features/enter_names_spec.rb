feature 'user enters a name' do
  scenario 'user submits name' do
    visit ('/')
    fill_in :player, with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Tom'
  end
end