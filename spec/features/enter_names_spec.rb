feature 'Enter names' do
  scenario 'submitting names', :js => true  do 
    visit('/')
    save_and_open_page
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
