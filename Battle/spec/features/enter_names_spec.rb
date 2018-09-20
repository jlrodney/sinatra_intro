feature 'Players enter names' do
  scenario 'submit names' do
    sign_in_and_play
    expect(page).to have_content 'Jamie vs. Florence'
  end
end
