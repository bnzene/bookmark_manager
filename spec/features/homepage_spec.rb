# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage

feature 'Display links' do
  scenario 'display links when user visits homepage' do
    tags = [Tag.first_or_create(name: 'development')]
    Link.create(url: 'https://github.com', title: 'Github', tags: tags)
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Github')
    end
  end
end
