
def sign_in_and_play
  visit '/'
  fill_in 'name1', with: 'Jess'
  fill_in 'name2', with: 'Mike'
  click_button 'Submit'
end
