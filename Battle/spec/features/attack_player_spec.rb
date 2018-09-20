feature "one player attacks another" do
  scenario "it attacks" do
    sign_in_and_play
    # attack
    click_button "player_1_attacks"
    expect(page).to have_content "Donkey Kong: 100HP\nBowser Jr.: 80HP"
  end
end
