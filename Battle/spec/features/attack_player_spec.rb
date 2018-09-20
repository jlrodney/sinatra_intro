feature "one player attacks another" do
  scenario "it attacks" do
    sign_in_and_play
    # attack
    click_button "attack"
    expect(page).to have_content "Donkey Kong: 100 HP Bowser Jr.: 80 HP"
  end
end
