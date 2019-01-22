feature 'Enter name' do
  scenario 'Players fill in their names in a form' do
    visit('/')
    fill_in :player1, with: 'Jess'
    fill_in :player2, with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'Jess vs James'
  end

  end
