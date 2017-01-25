def create_link
  visit '/links/new'
  fill_in :title, :with => 'MySpace'
  fill_in :URL, :with => 'myspace.com'
  click_button 'Submit'
end
