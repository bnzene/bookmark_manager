feature 'Filter website links' do
  scenario 'User can filter links by tag' do
    tags = [Tag.first_or_create(name: 'bubbles')]
    Link.create(url: 'https://github.com', title: 'Github', tags: tags)
    visit '/tags/bubbles'
    expect(page).to have_content('bubbles')
  end
end
