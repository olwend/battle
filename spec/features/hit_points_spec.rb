# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'Hit Points' do
  scenario "So I can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Badger has 100 hit points"
  end
end
