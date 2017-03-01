feature 'Game over' do
  context 'When player 1 reaches 0 HP first' do
    scenario 'player 1 loses' do
      visit('/')
      fill_in :player_1_name, with: 'Dave'
      fill_in :player_1_hp, with: '10'
      fill_in :player_2_name, with: 'Mittens'
      fill_in :player_2_hp, with: '60'
      click_button 'Submit'
      click_button 'Attack'
      click_link 'OK'
      click_button 'Attack'
      expect(page).to have_content 'Dave loses!'
    end
  end
end
