feature 'Attack' do
  scenario 'Player1 attack Player2 and reduce Player2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Jessie: 50 HP(s)'
  end
end
