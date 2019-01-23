feature 'Enter name' do
  scenario 'Players fill in their names in a form' do
    sign_in_and_play
    expect(page).to have_content 'Jess vs James'
  end
end

feature 'Hit points' do
  scenario "Show Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content 'James: 1 point(s)'
  end
end

feature 'Attack' do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jess attacked James!'
  end
end
