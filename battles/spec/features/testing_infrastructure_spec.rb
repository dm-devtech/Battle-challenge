require '././app.rb'

#feature 'Testing infrastructure' do
  #scenario 'Can run app and check page content' do
  #  visit('/')
  #  expect(page).to have_content 'Testing infrastructure working!'
  #end
#end

feature 'Testing form' do
  scenario 'entering two players names into one form' do
    sign_in_and_play
    expect(page).to have_text("Welcome Tom and Harry")
  end
end

#feature 'check player 2 HP' do
  #scenario 'As player 1 I want to see P2 HP to see if Im winning' do
  #sign_in_and_play
  #expect(page).to have_content('Harry HP = 100')
#end
#end

feature 'Attack button' do
  scenario 'Player1 attacks player2 and gets confirmation' do
  sign_in_and_play
  click_button "Attack"
  expect(page).to have_text('Tom attacks Harry')
end
end

feature 'Attack button' do
  scenario 'Player1 attacks player2 and P2 HP reduced by 10' do
  sign_in_and_play
  click_button "Attack"
  expect(page).to have_text('Harry HP = 90')
end
end
