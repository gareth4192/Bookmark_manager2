feature 'Creating Links' do

  scenario 'Links can be created' do
    visit '/links/new'
    fill_in 'url', with: 'ask.com'
    fill_in 'title', with: 'ask'
    click_button 'enter'
    within 'ul#links' do
      expect(page).to have_content('ask')
    end

  end
end
