# I want to see Player 2's Hit Points

feature "Player 1 can see Player 2's hitpoints" do
  scenario "Player 1 sees Player 2's hitpoints after entering the names" do
    sign_in_and_play
    expect(page).to have_content("Mike's HP: 100")
  end
end
