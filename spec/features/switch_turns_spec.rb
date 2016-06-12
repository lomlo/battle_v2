# We want to switch turns

feature 'Players take alternating turns' do
  scenario 'A player attacks' do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content("Attack Player 1")
  end
end
