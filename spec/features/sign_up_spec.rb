feature 'User sign up' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content("Welcome, ekavanaghbrown@gmail.com!")
    expect(User.first.email).to eq('ekavanaghbrown@gmail.com')
    expect(page.current_path).to eq('/links')
  end
end
