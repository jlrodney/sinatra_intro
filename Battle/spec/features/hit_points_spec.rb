feature 'Players can see hit points' do
  scenario 'show hit points' do
  sign_in_and_play
    expect(page).to have_content "Donkey Kong: 100HP\nBowser Jr.: 100HP"
  end
end
