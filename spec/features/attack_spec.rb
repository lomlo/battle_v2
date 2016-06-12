
feature 'Player 1 attacks Player 2 and recieves confirmation' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content('Jess has attacked Mike')
  end
end


feature 'Attacking Player 2 reduces the players hp by 10' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content("Mike's HP: 90")
  end
end
