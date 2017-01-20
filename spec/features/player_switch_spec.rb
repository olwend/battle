# As two Players,
# So we can continue our game of Battle,
# We want to switch turns
feature '#switch' do

  scenario 'it correctly changes the player_2 points on first attack' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'ok'
    expect(page).to have_content "Badger has 90 hit points"
  end

  scenario 'it allows a switch to player_1 being attacked, and reduces their HP' do
    fight
    expect(page).to have_content "Fox has 90 hit points"
  end

  scenario 'player_1 can attack after being attacked' do
    fight
    click_button 'Attack'
    click_link 'ok'
    expect(page).to have_content "Badger has 80 hit points"
  end

end
