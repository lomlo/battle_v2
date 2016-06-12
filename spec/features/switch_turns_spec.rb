# We want to switch turns

feature 'Players take alternating turns' do
  scenario 'A player attacks' do
    sign_in_and_play
    click_button('Attack Player 2')
    click_button('Attack Player 1')
    expect(page).to have_content("Jess's hp: 90")
  end
end
