feature 'Saving website link' do
  scenario 'User can save link to bookmark manager' do
    create_link
    expect(page.status_code).to eq 200
    expect(page).to have_content(:title)
  end
  scenario 'User can include tags with saved links' do
    create_tagged_link
    expect(page).to have_content('music')
  end
end
