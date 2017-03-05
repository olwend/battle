# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature 'player_switch' do
  scenario 'it allows damaged player to attack other player' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'Attack back!'
  end
end
