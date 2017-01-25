# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager

feature 'Database' do
  scenario 'add site address and title to bookmark manager' do
    visit '/links/new'
    fill_in :title, :with => 'MySpace'
    fill_in :URL, :with => 'https://myspace.com'
    click_button 'Submit'
    expect(page.status_code).to eq 200
    expect(page).to have_content('MySpace')
    expect(page).to have_content('https://myspace.com')
  end
end
