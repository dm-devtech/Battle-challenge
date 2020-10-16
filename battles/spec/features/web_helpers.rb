def sign_in_and_play
  visit('/')
  fill_in('Player1_name', with: 'Tom')
  fill_in('Player2_name', with: 'Harry')
  click_button "Submit"
end
