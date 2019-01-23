def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Jess'
  fill_in :player2, with: 'James'
  click_button 'Submit'
end
