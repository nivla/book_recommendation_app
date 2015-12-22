require 'rails_helper'

feature 'User logs out' do
  scenario 'destroy website session' do
    user = create :user
    login_as user

    click_link "Logout"

    expect(page). to have_link "Login"
  end
end
