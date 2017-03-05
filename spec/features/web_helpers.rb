def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Fox'
  fill_in :player_2_name, with: 'Badger'
  click_button 'Submit'
end
