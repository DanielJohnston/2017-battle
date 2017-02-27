feature 'Attack opponent' do
  scenario 'at beginning of first turn' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Dave attacks Mittens'
  end
end
