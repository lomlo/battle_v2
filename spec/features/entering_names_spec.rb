
#We want to Start a fight by entering our Names and seeing them

feature 'Enter names' do
  scenario 'submits names' do
    sign_in_and_play
    expect(page).to have_content('Jess vs Mike')
  end
end
