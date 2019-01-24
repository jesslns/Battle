def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Raymond'
  fill_in :player2, with: 'Jessie'
  click_button 'Submit'
end
