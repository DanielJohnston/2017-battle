feature 'See opponents hit points' do
  scenario 'at beginning of first turn' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
  scenario 'reduced by 10 after an attack' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end
