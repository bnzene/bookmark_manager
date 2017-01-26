feature 'add tags to the links in bookmark manager' do
  scenario 'organise links into multiple by separating with a space' do
    tags_string = ['dev','sw']
    create_tagged_link(tags_string.join(" "))

    tags_string.each do |tag_string|
      visit "/tags/#{tag_string}"
      expect(page).to have_content(tag_string)
    end
  end
end
