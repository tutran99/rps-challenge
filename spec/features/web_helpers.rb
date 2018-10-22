def sign_in_and_start
  visit ('/')
  fill_in :player, with: 'Tom'
  click_button 'Submit'
end