feature 'Players can see hit points' do
  scenario 'show hit points' do
  sign_in_and_play
    expect(page).to have_content "Donkey Kong: 100 HP Bowser Jr.: 100 HP"
  end
end
