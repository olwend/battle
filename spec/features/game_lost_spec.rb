# As a Player,
# So I can lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'game over' do
  scenario 'it will display a lose message if player reaches 0HP' do
    sign_in_and_play
      18.times do lose
      end
      click_button 'Attack'
    expect(page).to have_content("You lose")
end
end
