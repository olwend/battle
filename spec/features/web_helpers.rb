def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Fox'
  fill_in :player_2_name, with: 'Badger'
  click_button 'Submit'
end

def fight
  visit('/')
  fill_in :player_1_name, with: 'Fox'
  fill_in :player_2_name, with: 'Badger'
  click_button 'Submit'
  click_button 'Attack'
  click_link 'ok'
  click_button 'Attack'
  click_link 'ok'
end

def lose
  click_button 'Attack'
  click_link 'ok'
end
