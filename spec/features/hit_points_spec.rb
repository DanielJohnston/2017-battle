feature 'See opponents hit points' do
  scenario 'at beginning of first turn' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end
