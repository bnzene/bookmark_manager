def create_link
  visit '/links/new'
  fill_in :title, :with => 'MySpace'
  fill_in :URL, :with => 'myspace.com'
  click_button 'Submit'
end

def create_tagged_link
  visit '/links/new'
  fill_in :title, :with => 'MySpace'
  fill_in :URL, :with => 'myspace.com'
  fill_in :tags, :with => 'music'
  click_button 'Submit'
end
