feature 'viewing links' do
  scenario 'Links can be seen' do

    Link.create(url: 'google.com', title: 'google')

      visit '/links'
      within 'ul#links' do
      expect(page).to have_content('google')
    end
  end
end
