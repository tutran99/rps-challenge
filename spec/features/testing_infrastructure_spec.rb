feature 'Testing infrastructure' do
  scenario 'App can be run and first page' do
    visit ('/')
    expect(page).to have_content 'Testing'
  end
 end