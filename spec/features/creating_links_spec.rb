feature 'Saving website link' do
  scenario 'User can save link to bookmark manager' do
    create_link
    expect(page.status_code).to eq 200
    expect(page).to have_content(:title)
  end
end
