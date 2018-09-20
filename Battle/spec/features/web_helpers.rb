

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Jamie"
  fill_in :player_2_name, with: "Florence"
  click_button 'Submit'
end
