def create_link
  visit '/links/new'
  fill_in :title, :with => 'MySpace'
  fill_in :URL, :with => 'myspace.com'
  yield if block_given?
  click_button 'Submit'
end

def create_tagged_link(tag = 'music')
  create_link{fill_in :tags, :with => tag}
end

def sign_up
  visit '/users/new'
  expect(page.status_code).to eq(200)
  fill_in :email, with: 'ekavanaghbrown@gmail.com'
  fill_in :password, with: 'p4ssw0rd'
  click_button 'Sign up!'
end
