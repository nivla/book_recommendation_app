require 'rails_helper'

feature 'User create account' do
  scenario 'redirect to books path' do
    visit new_registration_path
    fill_in "Name", with: "Example user"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "userpassword"

    click_button "Sign up"

    expect(page).to have_content "Account created successfully"
  end
end
