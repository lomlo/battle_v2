
feature 'player looses when they reach 0hp' do
  scenario 'player2 is attacked when at 10hp' do
    sign_in_and_play
    9.times do
      click_button('Attack Player 2')
      click_button('Attack Player 1')
    end
    click_button('Attack Player 2')
    expect(page).to have_content("Mike Looses!!")
  end
end
