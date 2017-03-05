# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "attack_player" do
  scenario "attack_player and get confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Badger has been struck"
  end

  scenario "attack reduces Player 2s hit points by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Badger has been struck reducing points by 10"
  end
end
