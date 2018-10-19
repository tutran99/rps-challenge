feature 'user enters a name' do
  scenario 'user submits name' do
    sign_in_and_start
    expect(page).to have_content 'Welcome Tom'
  end
end