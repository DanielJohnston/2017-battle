feature 'Attack opponent' do
  scenario 'at beginning of first turn' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacks Mittens'
  end

  scenario 'on opponent first turn' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Mittens attacks Dave'
  end
end
