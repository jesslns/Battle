feature "Switch attack" do
  scenario "Player2 attack after being attacked by player1" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content "Jessie's attack"
    expect(page).not_to have_content "Raymond's attack."
  end
end
