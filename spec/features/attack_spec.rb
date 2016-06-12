
# I want to attack Player 2, and I want to get a confirmation

feature 'Player 1 attacks Player 2 and recieves confirmation' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content('Jess has attacked Mike')
  end
end

# I want Player 2 to attack me, and I want to get a confirmation

feature 'Player 2 attacks Player 1 and recieves confirmation' do
  scenario 'Player 2 attacks Player 1' do
    sign_in_and_play
    click_button('Attack Player 2')
    click_button('Attack Player 1')
    expect(page).to have_content('Mike has attacked Jess')
  end
end

# I want my attack to reduce Player 2's HP by 10

feature 'Attacking Player 2 reduces the players hp by 10' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content("Mike's HP: 90")
  end
end

# I want Player 2's attack to reduce my HP by 10

feature 'Attacking Player 1 reduces the players hp by 10' do
  scenario 'Player 2 attacks Player 1' do
    sign_in_and_play
    click_button('Attack Player 2')
    click_button('Attack Player 1')
    expect(page).to have_content("Jess's HP: 90")
  end
end
